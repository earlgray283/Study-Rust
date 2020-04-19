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