
fn main(){
    let concat:fn(Vec<&str>)->String=|words|words.iter().map(|word|word.chars()).flatten().collect();
    dbg!(concat(vec!["dfsaf","dsafa"]));
}