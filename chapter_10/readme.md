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

### (自分用)トレイトの何が嬉しいの？？？
トレイトを使うことによって何が嬉しいのかというのは長年の悩みであったが、ながたかなさんに教えてもらってついに完全に理解することができた。ながたかなさんありがとうございます。
```rust
trait Diameter {
    fn diameter(&self) -> f64;
    fn radius(&self) -> f64 {
        self.diameter() / 2_f64
    }
}
struct Circle { d: f64 }
struct Square { x: f64 }

impl Diameter for Circle {
    fn diameter(&self) -> f64 { self.d }
}
impl Diameter for Square {
    fn diameter(&self) -> f64 { self.x }
}
fn main(){
    println!("{}", Circle{ d: 20_f64 }.radius());
    println!("{}", Square{ x: 50_f64 }.radius());
}
```
これは半径と直径の長さを求めるものである。パッと見だと「struct でよくない？笑」となるが、注目すべきは radius である。Circle と Square には radius メソッドがないはずだが、main 関数ではメソッドを呼び出せている。これは、trait でデフォルト radius が実装されているためである。これにより、いちいち構造体を定義するたびに radius を実装しなくてもよくなる。ただ、デフォルト定義関数がないとなると本当にメリットあるのか？？？

## 10.3. ライフタイムで参照を有効化する
* ライフタイム<br>
ある参照が有効になるスコープのこと。型が推論されるように、ライフタイムも暗黙的に推論される。

### ライフタイムでダングリング参照を回避する
ライフタイムの主な目的は、ダングリング参照を回避すること。ダングリング参照によって、プログラムは参照することを意図したデータ以外のデータを参照してしまう。
```rust
{
    let r;
    {
        let x=5;
        r=&x;
    }
    println!("r:{}",r);
}
```
x の不変参照を r に渡しているが、x のライフタイムは短いため、コンパイラはそれを検知してコンパイル時に教えてくれる。天才か？？

### 借用精査機
rust コンパイラには、スコープを比較してすべての借用が有効であるかを決定する借用チェッカーがある。
```rust
{
    let r;                // ---------+-- 'a
                          //          |
    {                     //          |
        let x = 5;        // -+-- 'b  |
        r = &x;           //  |       |
    }                     // -+       |
                          //          |
    println!("r: {}", r); //          |
}                         //----------+
```
ライフタイムは 'a > 'b なので、'b は寿命が短いと判断される。だから 'b 内で宣言された変数の参照を 'a の変数に渡したままスコープ 'b を終えることはできない。こうしてダングリング参照を防ぐ。

### 関数のジェネリックなライフタイム
```rust
fn main(){
    let string1 = String::from("makabe");
    let string2 = String::from("ibuki");
    let result = longest(string1.as_str(), string2.as_str());
    println!("The longest string is {}",result);
}
```
ここで、longest 関数に参照を渡していることに注意。参照を渡さないと move してしまうためである。

```rust
fn longest(x: &str, y: &str) -> &str {
    if x.len() > y.len() {
        x
    } else {
        y
    }
}
```
longest 関数をこのように実装するとコンパイルエラーが発生する。返す参照が x なのか y なのかは、コンパイラにもわからないためである。rust は必ず借用チェッカーがわかるように書かないといけないため、これはNG。

### ライフタイム注釈記法
* ライフタイム注釈<br>
いかなる参照の生存期間も変えることはない。ジェネリックなライフタイム引数を指定することで関数は、あらゆるライフタイムの参照を受け入れる。
```rust
&i32        // ただの参照
&'a i32     // 明示的なライフタイム付きの参照
&'a mut i32 // 明示的なライフタイム付きの可変参照
```
ライフタイム引数の名前はアポストロフィ(')から始まり、全部小文字でなければならない。基本的には 'a を使う。

### 関数シグニチャにおけるライフタイム注釈
```rust
fn longest<'a>(x: &'a str, y: &'a str) -> &'a str {
    if x.len() > y.len(){
        x
    } else {
        y
    }
}
```
x も y も 同じライフタイム 'a になると指定した。具体的には、関数シグネチャは、ライフタイム 'a に対し、関数は2つの引数を取り、どちらも 'a と同じだけ生きる文字列スライスであることをコンパイラに教えるようになった。

```rust
fn longest<'a>(x: &'a str, y: &'a str) -> &'a str {
    if x.len() > y.len() {
        x
    } else {
        y
    }
}
fn main() {
    let string1 = String::from("long string is long");
    let result;
    {
        let string2 = String::from("xyz");
        result = longest(string1.as_str(), string2.as_str());
    }
    println!("The longest string is {}", result);
}
```
このケースだと、コンパイルははじかれる。理由は、result が内側スコープよりも外側にあることにより、string1 と string2 は必ず同じライフタイムでなければならないためである。result には string1 か string2 の文字列スライスが入るため、どちらかの寿命が尽きたら result も使えなくなってしまう。優秀だなあ。。。

### 構造体定義のライフタイム注釈
構造体に参照を保持させることもできるが、やはりライフタイム注釈をつける必要がある。
```rust
struct ImportantExcerpt<'a> {
    part: &'a str,
}
fn main(){
    let novel = String::from("makabe, kotoha, umimi");
    let first_sentence = novel.split('.')
        .next()
        .expect("Could not find a 'a'");
    let i = ImportantExcerpt { part: first_sentence };
}
```
'a ライフタイム注釈は、ImportantExcerpt インスタンスが、part フィールドに保持している参照よりも長生きしないことを意味する。

### (自分用)どうゆうときにライフタイム注釈を使うのか？
条件によって参照が変わる、つまりコンパイル時に判断できないときはライフタイム注釈を使う？

### ライフタイム省略
参照にはライフタイムがあり、参照を使用する関数や構造体にはライフタイム引数を指定する必要があることがわかった。しかし、次のコードはライフタイム注釈なしでコンパイルできる。
```rust
fn first_word(s: &str) -> &str {
    let bytes = s.as_bytes();

    for (i, &item) in bytes.iter().enumerate() {
        if item == b' ' {
            return &s[0..i];
        }
    }
    &s[..]
}
```
このパターンはコンパイラに落とし込まれたため、チェッカーがライフタイムを推論できるようになった。

### 参照のライフタイムの計算規則
1. 参照である各引数は、独自のライフタイム引数を得る。
2. 1つだけ入力ライフタイム引数があるなら、そのライフタイムがすべての出力ライフタイム引数に代入される。
3. 複数の入力ライフタイム引数があるがそれがメソッドの場合は、self のライフタイムが全出力ライフタイム引数に代入される。

### コンパイラになってみる
first_word 関数のシグニチャの参照のライフタイムが何かを計算する。
```rust
fn first_word(s: &str) -> &str {
```
各引数が独自のライフタイムを得ると指定する。
```rust
fn first_word<'a>(s: &'a str) -> &str {
```
入力ライフタイムが1つだけなので、出力ライフタイム引数も 'a になる。
```rust
fn first_word<'a>(s: &'a str) -> &'a str {
```

### 静的ライフタイム
```rust
let s: &'static str = "I have a static lifetime";
```
* 'static<br>
プログラム全体の期間を示す。

### ジェネリックな型引数、トレイト境界、ライフタイムを一度に
```rust
use std::fmt::Display;
fn longest<'a, T>(x: &'a str, y: &'a str, ann: T) -> &'a str
    where T: Display
{
    println!("{}", ann);
    if x.len() > y.len() {
        x
    } else {
        y
    }
}
```
* where<br>
これは、longest<'a, T: Display> をわかりやすくしたものである。

T 型の ann を出力しているため、Display トレイト境界が必要