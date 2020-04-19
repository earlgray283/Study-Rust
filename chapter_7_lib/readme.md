# 7. モジュール
## 7.1. mod とファイルシステム
ライブラリクレートを作成する。
```bash
$ cargo new hogehoge --lib
```

### モジュール定義
```rust
mod network {
    fn connect() {     
    }
}
mod client {
    fn connect() {
    }
}
```
network モジュール外のスクリプトから呼び出したい場合は network::connect() と名前空間記法の :: を使用する必要がある。

モジュール内にモジュールを書くこともできる。client は network の一部なので、こうしたほうが適切。
```rust
mod network {
    fn connect() {

    }
    mod client {
        fn connect() {

        }
    }
}
```
ここで、client 内の connect() を呼び出すときは ```network::client::connect()```をする。

### モジュールを別ファイルに移す
```rust
mod client;

mod network {
    fn connect() {
    }
    mod server {
        fn connect() {
        }
    }
}
```
mod client; で {} を ; にすることにより、client のモジュールは別ファイルを探すようにコンパイラに指示している。

src/network.rs
```rust
fn connect() {

}
mod server;
```

この状態で cargo build しようとするとコンパイルではじかれる。

```
error[E0583]: file not found for module `server`
 --> src/network.rs:4:5
  |
4 | mod server;
  |     ^^^^^^
  |
  = help: name the file either network/server.rs or network/server/mod.rs inside the directory "src"
```

このときは network ディレクトリを作成し、network.rs を mod.rs にかえて network ディレクトリ上に移動し、また server.rs も network ディレクオリ上に移動させればよい。 

## 7.2 pub で公開するか制御する
正常にビルドできたとき、client::connect などの関数が使用されていないという警告メッセージが出てきた。なぜなのだろうか？とりあえず関数を使用してみる。
```rust
extern crate chapter_7_lib;
fn main(){
    chapter_7_lib::client::connect();
}
```
これをビルドすると、モジュールは非公開であるというエラーがでる。

### 関数を公開にする
```rust
pub mod client;
```
こうすることで外部ライブラリを公開することができる。もちろん pub をつけないことであえて非公開にすることも可能。

### プライバシー規則
* 要素が公開なら、どの親モジュールを通してもアクセス可能
* 要素が非公開なら、直接の親モジュールとその親の子モジュールのみクセス可能

* プライバシー例
```rust
mod outermost{
    pub fn middle_func(){}
    fn middle_secret_func(){}
    mod inside{
        pub fn inner_func(){}
        fn secret_func(){}
    }
}

fn try_me(){
    outermost::middle_func();
    outermost::middle_secret_func();
    outermost::inside::inner_func();
    outermost::inside::secret_func();
}
```
```outermost::middle_func();```
このコードは正常である。try_me 関数はルートモジュールなので、その子のmiddle_func 関数が属する outermost モジュールが非公開であったとしても、middle_func 関数自体は pub なので使用は許される。プライバシー規則の2番目が適応される。

```outermost::middle_secret_func()```
このコードは許されない。middle_func 関数は pub であったから使用できたが、middle_secret_func 関数は pub ではないため、もし使うとしたら outermost モジュール内でなければならない。

```outermost::inside::～```
上と同様である。

## 7.3. 異なるモジュールの名前を参照する
```rust
pub mod a {
    pub mod series {
        pub mod of {
            pub fn nested_modules() {}
        }
    }
}
fn main() {
    a::series::of::nested_modules();
}
```
長ったらしい！！！！

### use キーワードで名前をスコープに導入する
```rust
use a::series::of;
fn main(){
    of::nested_modules();
}
```
use hoge1::hoge2::hoge3; としたら、この中にある関数は hoge3::fuga(); というように、hoge3 から始めないといけないので注意。

```rust
use a::series::of::nested_modules();
fn main(){
    nested_modules();
}
```
関数を直接参照することも可能。

enum も名前空間をなすので、enum の列挙子を use でスコープに導入することもできる。なにこれすごい
```rust
enum TrafficLight {
    Red,
    Yellow,
    Green,
}
use TrafficLight::{Red, Yellow};
fn main() {
    let red = Red;
    let yellow = Yellow;
    let green = TrafficLight::Green;
}
```
本当だったら TrafficLight::Red としなければならないところを、Red だけで書けるようになっている。

### Glob ですべての名前をスコープに導入する
ある名前空間の要素をすべて一度にスコープに導入するには、* 表記が使用できる。クッッッッッッッッッソ便利だが、名前衝突を起こす可能性があるので非推奨。
```rust
use TrafficLight::*;
```

### super を使用して親モジュールにアクセスする
```rust
::client::connect();
super::client::connect();
```
:: もしくは super:: を使用することで、親のモジュールにアクセスすることが可能となる。


