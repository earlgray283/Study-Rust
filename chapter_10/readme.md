# 10. ジェネリック型、トレイト、ライフタイム
### 関数を抽出することで重複を取り除く
```rust
fn largest(list: &[i32]) -> i32 {
    let mut largest = list[0];
    for &item in list.iter() {
        if item > largest {
            largest = item;
        }
    }
    largest
}

fn main() {
    let number_list = vec![34, 50, 25, 100, 65];

    let result = largest(&number_list);
    println!("The largest number is {}", result);

    let number_list = vec![102, 34, 6000, 89, 54, 2, 43, 8];

    let result = largest(&number_list);
    println!("The largest number is {}", result);
}
```
関数化をしましょう

## 10.1 ジェネリックなデータ型
* ジェネリクス<br>
引数が i32 なのか String なのかなど考えなくてもよくなる型推論のこと。天才すぎる

### 関数定義では
```rust
fn largest_i32(list: &[i32]) -> i32 {
    let mut largest = list[0];
    for &item in list.iter() {
        if item > largest {largest = item;}
    }
    largest
}

fn largest_char(list: &[char]) -> char {
    let mut largest = list[0];
    for &item in list.iter() {
        if item > largest {largest = item;}
    }
    largest
}

fn main() {
    let number_list = vec![34, 50, 25, 100, 65];

    let result = largest_i32(&number_list);
    println!("The largest number is {}", result);

    let char_list = vec!['y', 'm', 'a', 'q'];

    let result = largest_char(&char_list);
    println!("The largest char is {}", result);
}
```
最大値を見つける関数をデータ型によって分けているため、冗長

ジェネリクスを使うとこうなる
```rust
fn largest<T>(list: &[T]) -> T {
    let mut largest = list[0];
    for &item in list.iter() {
        if item > largest {largest = item;}
    }
    largest
}

fn main() {
    let number_list = vec![34, 50, 25, 100, 65];

    let result = largest(&number_list);
    println!("The largest number is {}", result);

    let char_list = vec!['y', 'm', 'a', 'q'];

    let result = largest(&char_list);
    println!("The largest char is {}", result);
}
```
* fn largest<T>(list:&[T])->T {
    ジェネリクス T を使うことで、char でも i32 でも引数として受け取ることができる。 

このコードをコンパイルするとエラーが発生する。
```rust
error[E0369]: binary operation `>` cannot be applied to type `T`
(エラー: 2項演算`>`は、型`T`に適用できません)
 --> src/main.rs:5:12
  |
5 |         if item > largest {
  |            ^^^^^^^^^^^^^^
  |
  = note: an implementation of `std::cmp::PartialOrd` might be missing for `T`
  (注釈: `std::cmp::PartialOrd`の実装が`T`に対して存在しない可能性があります)
```
よくわからない

### 構造体定義では
構造体でもジェネリックな引数を使用することもできる。
```rust
struct Point<T>{
    x:T,
    y:T,
}
fn main(){
    let integer=Point{x:5,y:10};
    let float=Pointa{x:5.0,y:10.0};
}
```
T にはなんの型をいれても問題はないが、x も y も T 型であるため、T の型が決まれば x も y も同じ型でなければならないということに注意する必要がある。

x と y を違う型にしたいならこうすればいい。
```rust
struct Point<T,U>{
    x:T,
    y:U,
}
fn main(){
    let i_f=Point{x:5,y:2.0};
}
```

### enum 定義では
ジェネリックなデータ型を保持できる enum を定義することも可能。Option<T>がまさにそれ
```rust
enum Option<T>{
    Some(T),
    None,
}
```
複数のジェネリック型も使用できる。Result<T,E>がそれ
```rust
enum Result<T,E>{
    Ok(T),
    Err(E),
}
```


### メソッド定義では
```rust
struct Point<T>{
    x:T,
    y:T,
}
impl<T> Point<T>{
    fn x(&self)->&T{
        &self.x
    }
}
fn main(){
    let p=Point{x:5,y:10};
    println!("p.x={}",p.x());
}
```
impl 直後に T を宣言しなければならないことに注意。impl で T 型を使うよー、impl<T> では Point<T> のメソッドを定義するよー、というニュアンス。

ちなみに impl<T> を指定しない場合は、T が具体的な型であるときのみ使えるメソッドを定義することになる。
```rust
impl Point<f32>{
    fn dist_from_origin(&self)->f32{
        (self.x.powi(2) + self.y.powi(2)).sqrt()
    }
}
```
dist_from_origin メソッドは T が f32 のときに使える関数である。

また、型引数は必ずしもメソッドで使用するとは限らない。
```rust
struct Point<T, U> {
    x: T,
    y: U,
}
impl<T, U> Point<T, U> {
    fn mixup<V, W>(self, other: Point<V, W>) -> Point<T, W> {
        Point {
            x: self.x,
            y: other.y,
        }
    }
}
fn main() {
    let p1 = Point { x: 5, y: 10.4 };
    let p2 = Point { x: "Hello", y: 'c'};
    let p3 = p1.mixup(p2);

    println!("p3.x = {}, p3.y = {}", p3.x, p3.y);
}
```
mixup メソッドではほかの Point を引数として取り、self とは異なる型の可能性がある。このようにして、型が違うジェネリクス同士を使うことも可能である。

## 10.2. トレイト：共通の振る舞いを定義する
* トレイト(他の言語だと interface )
特定の型に存在し、他の型と共有できる機能。

### トレイトを定義する
NewsArticle または Tweet インスタンスに保存されているデータのサマリを表示できるライブラリを考える。
```rust
pub trait Summary{
    fn summarize(&self)->String;
}
```
trait キーワードでトレイトを定義する。トレイトは本体に複数のメソッドを含むことができ、各行はセミコロンで終止する。

### トレイトを型に実装する
```rust
pub trait Summary {
    fn summarize(&self) -> String;
}
pub struct NewsArticle {
    pub headline: String,
    pub location: String,
    pub author: String,
    pub content: String,
}
impl Summary for NewsArticle {
    fn summarize(&self) -> String {
        format!("{}, by {} ({})", self.headline, self.author, self.location)
    }
}
pub struct Tweet {
    pub username: String,
    pub content: String,
    pub reply: bool,
    pub retweet: bool,
}
impl Summary for Tweet {
    fn summarize(&self) -> String {
        format!("{}: {}", self.username, self.content)
    }
}
```
ここでは、Summary トレイトを NewsArticle と Tweet 型に実装している。
* impl Summary for Tweet {
impl の後にトレイトの名前、そして for の後に構造体の名前をおくことで、トレイトの実装対象の型の名前を指定することができる。

* トレイト境界で largest 関数を修正する
```rust
fn largest<T>(list: &[T]) -> T {
    let mut largest = list[0];
    for &item in list.iter() {
        if item > largest {
            largest = item;
        }
    }
    largest
}

fn main() {
    let number_list = vec![34, 50, 25, 100, 65];

    let result = largest(&number_list);
    println!("The largest number is {}", result);

    let char_list = vec!['y', 'm', 'a', 'q'];

    let result = largest(&char_list);
    println!("The largest char is {}", result);
}
```
このコードはエラーをはいた。理由は、この状態で T 型の値を比較することはできないためである。

＞ は標準ライブラリトレイトの std::cmp::PartialOrd でデフォルトメソッドとして定義されているため、T のトレイト境界に PartialOrd を指定する必要がある。
```rust
fn largest<T: PartialOrd>(List:&[T]) -> T{
```
* PartialOrd <br>
T 型の大小比較をできるようにする。

しかしこれも cannot move out of type [T], a non-copy slice とエラーがでる。

ジェネリックでないバージョンの largest 関数は i32 や char などの Copy トレイトを探すだけだったため、それらはスタックに格納することができた。しかしジェネリックの場合は String などの Copy トレイトではない型を含む可能性が出ている。だから list[0] から largest にムーブすることができない。

なので T 型に PartialOrd の他に Copy トレイトも加えてあげればいい。
```rust
fn largest<T: PartialOrd + Copy>(List:&[T]) -> T{
```

* トレイト境界を使用して、メソッド実装を条件分けする
```rust
use std::fmt::Display;
struct Pair<T> {
    x: T,
    y: T,
}
impl<T> Pair<T> {
    fn new(x: T, y: T) -> Self {
        Self {
            x,
            y,
        }
    }
}
impl<T: Display + PartialOrd> Pair<T> {
    fn cmp_display(&self) {
        if self.x >= self.y {
            println!("The largest member is x = {}", self.x);
        } else {
            println!("The largest member is y = {}", self.y);
        }
    }
}
```
T が Display トレイトと PartialOrd トレイトを実装しているときにcmp_display メソッドは実装される。