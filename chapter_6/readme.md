Enum よくわからない。Rust 一通り勉強した後もう一回見る。
# 6. Enum と パターンマッチング
## 6.1 Enum を定義する
* enum の何が嬉しいんだ
IPアドレスを考える。IPアドレスには v4 と v6 があるが、どちらとも遭遇する可能性がある。列挙型では、取りうる値をすべて列挙することができる。

v4 と v6 どちらも根源的には IPアドレス であるため、これらを扱うときは同じ型であるべきである。IpAdderKind では v4 と v6 それぞれを列挙して表現することができる。

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