extern crate rand;

use std::io;
use std::cmp::Ordering;
use rand::Rng;

fn main(){
    println!("Guess the number!");

    let secret_number = rand::thread_rng().gen_range(1, 101);
    /*
        gen_range(下限, 上限+1);
    */

    //println!("The secret number is: {}",secret_number);

    loop {
        println!("Please input your guess.");

        let mut guess=String::new();
        /*
            let mut hoge  ... mutable(変数)
            let hoge      ... imutable(不変)
            String::new() ... 文字列型(UTF-8)
        */
    
        io::stdin().read_line(&mut guess)
            .expect("Failed to read line");
        /*
            ・use std::io;がなかったらstd::io::stdin()～となる。
            ・read_lineの引数は &mut String 
            ・&は参照渡しだが、rustだと参照は imutable がデフォルトなので、
            　&mut guess という形にする必要がある。( let も同様)
            　もしも mutable でなければ、guess に入力を入れることができない。
            ・expect(String)はエラーハンドリング
        */
    
        let guess: u32 = match guess.trim().parse() {
            Ok(num) => num,
            Err(_) => continue,
        };
        /*
            ・すでにguessを定義しているが、新しく定義することで
            「隠す(シャドーイング)」ことが可能。
    
        */
        
        println!("You guessed: {}",guess);
        /*
            {}は cで言う %d とかのこと。
        */
    
        match guess.cmp(&secret_number) {
            Ordering::Less    => println!("Too small!"),
            Ordering::Greater => println!("Too big!"),
            Ordering::Equal   => {
                println!("You win!");
                break;
            }
        }
        /*
            ・match文 ... switch文のようなもの。
            match x {
                1 => println!("one"),
                2 => println!("two"),
                _ => println!("something else"), 
            }
            また、式としても書ける。
            let number = match x {
                1 => "one",
                2 => "two",
                _ => "something else",
            }
        */
    }
    
}