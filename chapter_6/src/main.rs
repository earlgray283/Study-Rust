fn main() {
    let x = Some(3);
    if x == Some(3) {
        println!("は？？？");
    }

    // if let Some(any) = x で パターンマッチングして 
    // Some の中身を取り出すことができる。
    if let Some(3) = x {
        println!("わけがわかった");
    }
}
