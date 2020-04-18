# 5. 構造体を使用して関連のあるデータを構造化する
## 5.1. 構造体を定義し、インスタンス化する
### 構造体とは
いうまでもない。Rust ではタプルと似ている。構造体ではそれぞれのデータに名前をつけるので、タプルと違ってわかりやすくなる。
    
rust で構造体を使うときは次のようになる。
```rust
struct User {
    username: String,
    email: String,
    sign_in_count: u64,
    acrive: bool,
}
```
また、構造体の定義時にあらかじめ具体的な値をつけることも可能。
```rust
struct User {
    username: String::from("makabe"),
    email: String::from("makabe@million.jp"),
    active: true,
    sign_in_count: 1,
}
```
よくわからないのだが、一般的に構造体を宣言したときはメンバ変数を初期化するのがあたりまえらしい。以下はダメな例である。( C は標準じゃない)
```rust
let mut user1:User;
user1.email=String::from("makabe@million.jp");
```
これは良い例
```rust
let mut user1 = User{
    username: String::from("makabe");
    email: String::from("makabe@million.jp");
    active: true;
    sign_in_count: 1,
}
user1.username = String::from("mizuki");
```
どうしても初期化したくない場合は default トレイトを用いるとよい。
```rust
#[derive(Default)]
struct User {
    username: String,
    email: String,
    sign_in_count: u64,
    active: bool,
}
fn main(){
    let mut user1:User=Default::default();
    user1.username = String::from("mizuki");
}
```
まあでも、rust では初期化するのが当たり前のようなので、言語仕様してこれに合わせるべきだろう。初期化しろ

関数の戻り値を構造体にすることもできる(あたりまえ)
```rust
fn build_user(email: String, username: String) -> User {
    User {
        email: email,
        username: username,
        active: true,
        sign_in_count: 1,
    }
}
```
### フィールドと変数が同名の時にフィールド初期化省略記法を使う
フィールドと変数が同名であれば省略が可能。
```rust
fn build_user(email: String, username: String) -> User {
    User {
        email,
        username,
        active: true,
        sign_in_count: 1,
    }
}
```

### 異なる型を生成する名前付きフィールドのないタプル構造体を使用する
```rust
struct Color(i32, i32, i32);
struct Point(i32, i32, i32);
let black = Color(0, 0, 0);
let origin = Point(0, 0, 0);
```

### 構造体データの所有権
構造体に文字列メンバを持たせる場合、所有権の存在しない &str でなく所有権のある String でなければならない。というのも、構造体が有効の間は必ず有効でないとならないため、所有権がなくいつ寿命が来るかわからない &str は許されないのである。

## 5.2. 構造体を仕様したプログラム例
### トレイトの継承で有用な機能を追加する
```rust
#[derive(Debug)]
struct Rectangle {
    width: u32,
    height: u32,
}
fn main(){
    let rect1 = Rectangle { width: 30, height: 50 };
    println!("rect1 is {:?}", rect1);
}
```
output
```
rect1 is { width:30, height:50 }
```
また、{:?} でなく {:#?} とすることでさらにいい感じになる。
output
```
rect is Rectangle {
    width: 30,
    height: 50
}
```

* derive 注釈
```
#[derive(トレイト)]
```
とすることで、トレイトを継承することができる。

## 5.3. メソッド記法
### メソッド記法
* メソッド
    メソッドは関数と似ている。しかし、関数と違ってメソッドは必ず構造体インスタンスからはじまる。

### メソッドを定義する
```rust
#[derive(Debug)]
struct Rectangle {
    width: u32,
    height: u32,
}
impl Rectangle {
    fn area(&self) -> u32 {
        self.width * self.height
    }
}
fn main() {
    let rect1 = Rectangle { width: 30, height: 50 };
    println!(
        "The area of the rectangl is {} square pixels.",
        rect1.area()
    );
}
```
* impl
構造体内にメンバ関数を定義するときは、impl(implementation;実装) ブロックを始める。

* &self
&self Rectangle 型の rect1 のことを指す。self(自分自身) という意味なので、自分自身から参照するなら必ず self という名前を引数につけなければならない。ここで、& をつけているのは、所有権を移動するのではなく、rect1 の値を参照するためである。とにもかくにも、参照したいなら & つけろ矢。

### Where is -> operator?
C の場合、ポインタからメンバ変数を参照する場合 -> 演算子を用いる必要があった。しかし、Go 同様に Rust では -> 演算子は必要ない。Rust のコンパイラくんは自動で &, &mut, * を付与してくれるから、構造体から参照したりメソッドを呼び出したりするときはプログラマは .演算子 のみ用いればよい。

### より引数の多いメソッド
```rust
impl Rectangle {
    fn area(&self) -> u32 {
        self.width * self.height
    }
    fn can_hold(&self, other: &Rectangle) -> bool {
        self.width > other.width && self.height > other.height
    }
}
```
難しいことではない。強いて言うなら、比較演算子は bool 型だということである。

### 関連関数
impl ブロックでは、self を引数に取らない関数を定義することも可能。これを**関連関数**と呼ぶ。関連関数はメソッドではなく関数である。
```rust
impl Rectangle {
    fn square(size: u32) -> Rectangle {
        Rectangle { width: size, height: size }
    }
}
```
square という関連関数を呼び出すためには、.記法 ではなく ::記法を用いる。
```rust
let sq = Rectangle::square(3);
```

### 複数の impl ブロック
```rust
impl Rectangle {
    fn area(&self) -> u32 {
        self.width * self.height
    }
}

impl Rectangle {
    fn can_hold(&self, other: &Rectangle) -> bool {
        self.width > other.width && self.height > other.height
    }
}
```
これは、1つの impl Rectangle ブロックにまとめても同じ意味である。よくわからないけど、複数の impl ブロックが有用になるケースがあるらしい。

### まとめ
* メソッドの恩恵
構造体のインスタンスが行う動作を指定することができる。

* 関連関数の恩恵
構造体に特定の機能を、インスタンスを利用することなしに名前空間分けすることができる。std:: とかはそうゆうことだったんだね！

enum 機能がすごいらしいから楽しみです。