Enum よくわからない。Rust 一通り勉強した後もう一回見る。
# 6. Enum と パターンマッチング
## 6.1 Enum を定義する
* enum の何が嬉しいんだ
IPアドレスを考える。IPアドレスには v4 と v6 があるが、どちらとも遭遇する可能性がある。列挙型では、取りうる値をすべて列挙することができる。

v4 と v6 どちらも根源的には IPアドレス であるため、これらを扱うときは同じ型であるべきである。IpAdderKind では v4 と v6 それぞれを列挙して表現することができる。

### 自分の enum の考察
enum は、いわゆるユーザ定義定数のようなものなのだと思う。IPアドレスの例でいくと、IPアドレスには V4 と V6 それぞれの種類がある。どちらも IPアドレス という枠組みの中に入っているが、V4 と V6 は違う。このような状態を表現するために enum があるのだと考えれば、多少は納得はいく。ただ自分は使わない可能性が非常に高い()

* enum の定義
```rust
enum IpAddrKind {
    V4,
    V6,
}
```

### Enum の値
以下のようにして、IpAdderKind の各列挙子のインスタンスを生成可能。
```rust
let four = IpAdderKind::V4;
let six = pAdderKind::V6;
```

例)
```rust
enum IpAddrKind {
    V4,
    V6,
}
struct IpAddr {
    kind: IpAddrKind,
    address: String,
}
let home = IpAddr {
    kind: IpAddrKind::V4,
    address: String::from("127.0.0.1"),
};
let loopback = IpAddr {
    kind: IpAddrKind::V6,
    address: String::from("::1"),
};
```

IPv4 を各値を u8 型で管理して、IPv6 を String 型で管理したい場合、struct では表現できないが enum だったらそれが可能。
```rust
enum IpAddr {
    V4(u8, u8, u8, u8),
    V6(String),
}
```

例)
```rust
enum Message {
    Quit,
    Move { x: i32, y: i32 },
    Write(String),
    ChangeColor(i32, i32, i32),    
}
```
* Quit

    紐づけられたデータはとくにない。


* Move

    中に匿名構造体を含む


* Write

    単独の String オブジェクトを含む


* ChangeColor

    3つの i32 値を含む


### Option 
Rust には null がない。しかし、値が存在するか否かという懸念をコード化する enum は存在する。
```rust
enum Option<T> {
    Some(T),
    None,
}
```
これは Option:: なしに Some(T) と None が使える。
```rust
let some_number = Some(5);
let some_string = Some("a string");
let absent_number: Option<i32> = None;
```
* Some(T)

    何か値が存在することを意味する。

* None

    null を意味する。


### Option の何が嬉しいのか？
```rust
let x: i8 = 5;
let y: Option<i8> = Some(5);
let sum = x + y;
```
このコードはエラーが発生する。Option<i8> 型と i8 型は違う型だからである。

i8 型の場合は、コンパイラが常に有効な値であるかどうかをチェックしてうれる。しかし、Option<T> 型の場合は、値を保持していない可能性もある。

つまり、Option<T> 型を使えば、値が null だったときの例外処理が可能となる。


## 6.2. match フロー制御演算子
### match フロー制御演算子
* match
一連のパターンに対して値を比較し、マッチしたパターンに応じてコードを実行してくれるフロー制御演算子。
```rust
enum Coin {
    Penny,
    Nickel,,
    Dime,
    Quarter,
}
fn value_in_cents(coin: Coin) -> u32 {
    match coin {
        Coin::Penny => 1,
        Coin::Nickel => 5,
        Coin::Dime => 10,
        Coin::Quarter => 25,
    }
}
```
変数 coin の状態が Coin::Penny であれば 1 を・・・、という感じのフロー。やっぱり enum は定数を列挙するっていうことらしい。

また、パターンに値がマッチしたときの処理は波かっこでくくることもできる。
```rust
fn value_in_cents(coin: Coin) -> u32 {
    match coin {
        Coin::Penny => {
            println!("Lucky penny!");
            1
        },
        Coin::Nickel => 5,
        Coin::Dime => 10,
        Coin::Quarter => 25,
    }
}
```

### 値に束縛されるパターン
Quarter 列挙子を変更し、複数の州 UsStage 列挙子を格納できるようにする。
```rust
#[derive(Debug)]
enum UsState {
    Alabama,
    Alaska,
    // ...
}
enum Coin {
    Penny,
    Nickel,
    Dime,
    Quarter(UsState),
}
fn value_in_cents(coin: Coin) -> u32 {
    match coin {
        Coin::Penny => 1,
        Coin::Nickel => 5,
        Coin::Dime => 10,
        Coin::Quarter(UsState::Alabama) => {
            println!("Alabama!!");
            25
        },
        Coin::Quarter(state) => {
            println!("State quarter from {:?}!", state);
            25
        },
    }
}
```
Coin::Quater(state) で Quarter から state を取り出すことができる。また、state の部分も UsState:Alabama とすることによって、さらに細かくパターンマッチングすることもできる。

### Option<T> とのマッチ
```rust
fn plus_one(x: Option<i32>) -> Option<i32> {
    match x {
        None => None,
        Some(i) => Some(i + 1),
    }
}
fn main(){
    let five = Some(5); // このとき five は Option<i32> 型
    let six = plus_one(five);
    let none = plus_one(None);
}
```
これはそんなに難しくない。ところで T 型便利すぎないか？チートだろチート。

### マッチは包括的
コンパイラは全可能性を網羅しているかどうかを検知してくれる。
```rust
fn plus_one(x: Option<i32>) -> Option<i32> {
    match x {
        Some(i) => Some(i + 1),
    }
}
```
例えばこのコードは Option<i32> 型にも関わらず、None の場合の処理を含んでいない。コンパイル時は、網羅していないためにエラーがでるようになっている。神か？

### _ というプレースホルダー
どのパターンにもマッチしないときの処理ができる _ というパターンを使用することができる。
```rust
let some_u8_value = 0u8;
match some_u8_value {
    1 => println!("one"),
    3 => println!("three"),
    _ => (),
}
```
_ はどんな値にもマッチする。ちなみに () はただのユニット値なので何も起こらない。

## 6.3. if let で簡潔なフロー制御
### if let で簡潔なフロー制御
if let 記法で冗長性の少ないパターンマッチングができる。
```rust
let some_u8_value = Some(0u8);
match some_u8_value {
    Some(3) => println!("three"),
    _ => (),
}
```
これは冗長。ださい。かっこわるい。

```rust
if let Some(3) = some_u8_value {
    println!("three");
}
```
if と何が違うんだと思ったのでここでまとめる。

* if
if はあくまでも論理型で評価をする。

* if let
これはパターンマッチングで評価をする。if とは別物。いやでもやっぱり if でよくないか？？？

### まとめ
enum は少しわかったけど、if let はまじでわからん。