# 8. 一般的なコレクション
## 8.1. ベクタ型
### 新しいベクタを生成する
```rust
let v:Vec<i32>=Vec::new();
```
rust の Vec<T> はジェネリクスで実装されているため、なんのデータ型でも保持させることが可能。

また、vec! マクロを使えば、allocate(サイズの割り当て) をすることも可能。(型推論を用いているため、あんまりよくないかも)
```rust
let v=vec![1;10];
```
この場合、1、つまり i32 のベクタが要素数10で宣言される。

### ベクタを更新する
```rust
let mut v=Vec::new();
v.push(3);
v.push(1);
v.push(4);
```
型推論でコンパイラは勝手にベクタが i32 型であることを把握するので、v:Vec<i32> とやる必要はない。

### ベクタの要素を読む
```rust
let v=vec![3,1,4,1,5];
let third:&i32=&v[2];
let third:Option<&i32>=v.get(2);
```
* 添え字記法

わかる

* get メソッド

v.get(index) で index の値を取得することができる。ここで、v.get(index) の戻り値は Option<T> であることに注意。

それぞれの方法で、配列外参照のときの振る舞いが変わる。
```rust
let v=vec![3,1,4,1,5];
let x=&v[2];
let x=v.get(2);
```
添え字記法では panic を起こすが、getメソッド であれば正常終了する。

参照が保持された状態でベクタを操作することもできない。
```rust
fn main() {
    let mut v = vec![1, 2, 3, 4, 5];
    let first = &v[0];
    v.push(5);
    println!("{}",first);
}

```
first が0番目の値を保持しているため、first が drop されるまでは ベクタに対して操作を行うことはできない。また、&v[0] は**不変借用**である。

### (自分用)可変借用について
```rust
fn main() {
    let mut v = vec![1, 2, 3, 4, 5];
    let first = &mut v[0];
    *first=5;
    println!("{}",v[0]);
}

```
このコードは 5 と出力される。理由は可変借用として first にv[0]の所有権を**コピー**し、firstに5を代入したためである。つまり、&をつければ完全に変数がコピーされる、つまりCでいうポインタと同じ振る舞いになるのである。ただし、first に v[0] が不変借用されている状態で v[0] に変更を加えることはできない。(参照することだけは可能)

### ベクタの値を走査する
```rust
    let mut v=vec![2,7,1,8];
    for i in v{
        i*=2;
    }
```
これはエラーが発生する。

この状態だと、for in i v の v に ムーブしてしまっていて、また for スコープ内で mutable でないためエラーが発生してしまう。

```rust
    let mut v=vec![2,7,1,8];
    for i in &mut v{
        i*=2;
    }
```
これは大丈夫。v を可変参照しているためである。

### enum を使って複数の型を保持する
```rust
enum SpreadsheetCell{
    Int(i32),
    Float(f64),
    Text(String),
}
let row=vec![
    SpreadsheetCell::Int(3),
    SpreadsheetCell::Float(3.14),
    SpreadsheetCell::Text("PI"),
];
```
ベクタは同じ型しか扱うことができないが、**Enum**を使えば複数の型を使うことができる。なるほど、Enum さん意味ないとかいってごめんなさい。

### (自分用)if let 完　全　に　理　解　し　た
上のコードで、ベクタに SpreadsheetCell を入れたものの、どうやって取り出すのか？その時に使うのがまさに**if let**である。
```rust
if let SpreadsheetCell::Int(x)=v[0]{
    println!("{}",x);
}
```
なんのために if let 使う念と思っていたが、こうやってパターンマッチングすることによって簡単に Enum の中の値を取り出すことができる。if let 最高！一番好きな式です！

## 8.2. 文字列型
### 文字列とは
文字列は何か？とか馬鹿にされてると思いがちだが、一度文字列の定義を理解する。

* &str

これは UTF-8 エンコードされた文字列データへの参照である。バイナリ出力にもなるため、文字列スライスになる。

* String

進捗可能、可変、所有権のある UTF-8 エンコードされた文字列型。

* その他

OsString, OsStr, CString, Cstr などがある。詳しくはドキュメントを見ようね！

### 新規文字列を生成する
```rust
let mut s=String::new();
let data="initial contents";
let s=data.to_string();
let s="initial contents".to_string();
let s=String::form("initial contents");
```
to_string メソッドを使用して文字リテラルから String を生成することが可能。

### 文字列を更新する。
```rust
let mut s=String::from("makabe ");
s+=&String::from("mizuki");
```
連結したいときはこんな感じにやらないといけない。文字リテラルはあくまでも &str であるため、Stringとして扱うには String::from...という呪文を唱えなければならない。また、所有権のムーブ等の関係で & もつけないといけない。めんどくせえ

```rust
let mut s=String::from("makabe ");
s.push_str("mizuki");
```
こうすることで少し楽になる。だけどやっぱめんどくさい＞＜

```rust
let s=format!("{}-{}-{}","idolm@ster","million","live");
```
sprintf みたいなこともできる。これは普通に便利

### 文字列に添え字アクセスする
```rust
let len = String::from("Здравствуйте").len();
```
こののときの len の値は 24 である。C は ASCII だが、Rust は UTF-8 なのでアラビア語などは 2 バイトの領域をとる。そのため、String 型で添え字アクセスすることはできない。

### (自分用)どうしても C++ の String みたいにしたいときは
char でベクタを作れば良い。
```rust
let mut s:Vec<char>=Vec::new();
s="makabe mizuki".chars().collect();
s[0]='M';
```

## 8.3. ハッシュマップ
### ハッシュマップを生成する
```rust
use std::collections::HashMap;
let mut scores=HashMap::new();
scores.insert(String::from("BLUE"),10);
```
これは use しないと使えない。

```rust
use std::collections::HashMap;
let teams=vec![String::from("BLUE"),String::from("YELLOW")];
let init_scores=vec![10,50];
let scores:HashMap<_,_>=teams.iter().zip(initial_scores.iter()).collect();
```
意味が分からん

### ハッシュマップの値にアクセスする
```rust
let score=scores.get("BLUE");
```
get メソッドは Option<T> 型である。なので取り出すときは if let とかを使う。

```rust
for (key, value) in &scores {
    println!("{}:{}",key,value);
}
```
走査することができる。ここで element は key と value のタプル。

### キーに値がなかった時のみ値を挿入する
```rust
use std::collections::HashMap;
let mut scores=HashMap::new();
scores.entry("Yellow").or_insert(50);
```
entry メソッドは Entry と呼ばれる enum を返す。Entry 上の or_insert メソッドはキーがなかったら挿入、あったら挿入しない動作をする。

### 古い値に基づいて値を更新する
```rust
use std::collections::HashMap;

let text = "hello world wonderful world";
let mut map = HashMap::new();
for word in text.split_whitespace() {
    let count = map.entry(word).or_insert(0);
    *count += 1;
}
println!("{:?}", map);
```
0-init しながら値をカウントしている。

or_insert メソッドはキーの値の可変参照を返している。だから count にコピーして、count を increment すれば勝手にキーの value も increment される。