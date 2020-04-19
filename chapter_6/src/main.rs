fn main(){
    let x = Some(3);
    if x == Some(3){
        println!("は？？？");
    }
    if let Some(3) = x {
        println!("わけがわからん");
    }
}