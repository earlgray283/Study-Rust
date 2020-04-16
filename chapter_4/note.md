# 4. 所有権を理解する
## 4-1. 所有権とは？
### メモリ管理について
    * Javaなど
        カベージコレクション(定期的に使用されていないメモリを検索するもの)を持っている。

    * Cなど
        プログラマが明示的にメモリを確保したり開放したりしなければならない。

    * Rustでは
        コンパイル時に**所有権システム**を通じてメモリ管理をしている。パフォーマンスも確保する。
    

### ヒープとスタックについて
    * スタック
        高速。スタック上のデータは必ず固定サイズでなければならない。

    * ヒープ
        サイズが可変のデータがヒープに格納される。
        しかし、スタック上のポインタを追ってヒープ上のデータに到達しなければならないため、低速である。

    * 所有権を使うと・・・
        ヒープ上のデータを把握したり掃除したりする必要がなくなる。所有権最高！一番好きな所有権です。


### 所有権規則
    * Rust の各値は、所有者と呼ばれる変数と対応している。

    * いかなる時も所有者は1つである。

    * 所有者がスコープから外れたら値は破棄される。


### 変数スコープ
* 文字列リテラル
    ```rust
    {
        let s = "hello";// s はここから有効になる 
    }// sはここで無効になる
    ```
    これは**不変**である。つまり、後から s の値を保持しながら変更することはできない。( s+=",world" みたいなことができない)


### String 型
```rust
let mut s = String::from("hello");
    
s.push_str(", world!");

println!("{}", s);
```
文字リテラルと違ってこれは変更が許される。


### メモリと確保
* 文字リテラル
    
    中身はコンパイル時に判明しているため、バイナリファイルまでハードコードされる。高速で効率的であるが、あくまでもサイズが固定であることが条件なので残念。
    
* String 型
    
    コンパイル時に不明なサイズのメモリをヒープに確保して内容を保持する。
    * メモリは*実行時*に OS に要求される

    * String 型を使い終わったら OS メモリを返還する必要がある

    1つ目は string::from 関数を呼んだときにされている。

    2つ目はメモリを所有している変数がスコープを抜けたら自動的に返還されるようになっている(Rustでは)。ガベージコレクションがついている言語であれば、使用されないメモリを検知して片づけている。Cは。。。ナオキです。
    
    ```rust
    {
        let s = String::from("hello");// s はここから有効になる
    }//ここで s は無効
    ```
    rust はスコープを抜けるときに drop と呼ばれるメモリ返還をする関数を呼ぶ。

### 変数とデータの相互作用：ムーブ
```rust
let x = 5;
let y = x;
println!("{} {}", x, y);
```
これは x に 5 を代入し、y に x を**コピー**している。

```rust
let s1 = String::from("hello");
let s2 = s1;
println!("{} {}", w1, s2);
```
これは動かない。

String 型の場合、「ポインタ」、「サイズ」、「キャパシティ」の 3 つを保持している。つまり s2 に s1 を**コピー**しているととらえた場合(Cの仕様と一緒)、s2 か s1 のどちらかがスコープから抜けたときに両方とも使えなくなってしまう( drop を呼ぶため)。なので、この場合は s2 = s1 を**コピー**しているのではなく**ムーブ**していると言う。つまりムーブした後に s1 は使えないためコンパイル時にはじかれる。

### 変数とデータの相互作用：クローン
もしも String 型のコピーがしたい場合は、clone メソッドを使うと良い。
```rust
let s1 = String::from("hello");
let s2 = s1.clone();
println!("{} {}", s1, s2);
}
```
ポインタはコピーされないが、ポインタ内のデータはコピーされる。

### スタックのみのデータ：コピー
* Copy トレイト
    
    整数など、スタックに保持される型は代入が**コピー**とみなされる。このことを Copy トレイトと呼ぶ。
    
    例)
    
    * 整数( u32 など)
    * 論理型 bool (true, false)
    * 浮動小数点型。( f64 など)
    * 文字型 ( char )
    * タプル。( i32, i32 )は Copy だが、( i32 , string )は違う。

### 所有権と関数
関数に値を渡すときも所有権が適応される。
```rust
fn main() {
    let s = String::from("hello");

    takes_ownershop(s); // s は関数にムーブされる。
    // ムーブされた s はここでは有効ではない。

    let x = 5;

    makes_copy(x); // s は関数にムーブされる。
    // ムーブされた x は i32、つまり Copy であるため有効である。
}
fn takes_ownership(some_string: String){
    println!("{}", some_string);
}// drop が呼ばれて、some_string のメモリが開放される。
fn makes_copy(some_integer: i32){
    println!("{}", some_integer);
}
```

### 戻り値とスコープ
関数が値を返すときも所有権は移動する。
```rust
fn main() {
    let s1 = gives_ownership(); // 戻り値は s1 にムーブする
    let s2 = String::from("hello")
    let s3 = takes_and_gives_back(s2);  // s2 は関数にムーブし、戻り値は s3 にムーブする。
}
fn gives_ownership() -> String {
    let some_string = String::from("hello");
    some_string // some_stringが呼び出し元にムーブする。
}
fn takes_and_gives_back(a_string: String) -> String {
    // a_string がこの関数にムーブされてくる
    a_string // a_string が呼び出し元にムーブする。
}
```
## 4-2. 参照と借用
### 参照と借用
関数に渡す、すなわちムーブすると String が使えなくなってしまうため、関数に String への参照をさせる形にする。
```rust
fn main(){
    let s1=String::from("hello");
    let len=calculate_length(&s1);
    println!("{}'s length is {}",s1,len);
}
fn calculate_length(s: &String)->usize{
    s.len()
}
```
& 演算子をつけることによって、関数は s1 を **参照** しているだけなので、String 型の s1 を引数に渡した後も s1 が使える。関数の引数に参照をとることを **借用** という。

それでは借用した変数に変更を加えてみる。
```rust
fn main() {
    let s = String::from("hello");
    change(&s);
}
fn change(some_string: &String) {
    some_string.push_str(", world");
}
```
このコードは動かない。
変数が標準で不変なのと同様で、参照も不変であある。

### 可変な参照

参照を mutableにすれば良い。
```rust
fn main() {
    let mut s = String::from("hello");
    change(&mut s);
}
fn change(some_string: &mut String) {
    some_string.push_str(", world");
}
```

また、参照には「ある特定のデータについて、1つしか可変の参照をもてない」という制約が存在する。
```rust
let mut s = String::from("hello");
let r1 = &mut s;
let r2 = &mut s;
println!("{}",r1);
```
これはエラーが発生する。

この制約があるとデータの競合を防ぐことができる。データの競合は次の3つの振る舞いが起きるときに発生する。
* 2つ以上のポインタが同じデータに同時アクセスする
* 少なくとも1つのポインタがデータに書き込みを行っている
* データへのアクセスを同期する機構が使用されていない

また、不変参照は複数回参照してもかまわないが、かといって可変参照と不変参照を組み合わせることはできない。
```rust
let mut s = String::from("hello");

let r1 = &s; // 問題なし
let r2 = &s; // 問題なし
let r3 = &mut s; // 大問題！
```

### 宙に浮いた参照
* ダングリングポインタ
    
    他人に渡されてしまった可能性のあるメモリを指すポインタのこと。その箇所へのポインタを保持している間に、メモリを開放してしまうことで発生する。

Rust ではダングリングポインタを防ぐ。
```rust
fn main(){
    let reference_to_nothing=dangle();
}
fn dangle()->&String{
    let s=String::from("hello");
    &s
}// s はスコープを抜けて drop される。sのメモリは開放される。
```
ここでは、s への参照を dangle() が返しているが、s の寿命は定かではないのでコンパイル時にエラーが発生する。