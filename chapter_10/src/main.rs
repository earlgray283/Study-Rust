trait output{
    fn echo();
}
struct data{
    x:i32,
}
impl data{
    fn echo2(&self){
        println!("hello~");
    }
}
fn main(){
    let a=data{x:1};
    a.echo2();
}