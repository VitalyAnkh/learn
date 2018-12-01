#[macro_use] extern crate structopt;
use std::path::PathBuf;
use structopt::StructOpt;



#[derive(StructOpt)]
struct Cli{
    pattern:String,
    #[structopt(parse(from_os_str))]
    path:std::path::PathBuf,

}

fn main(){
   let args=Cli::from_args();

}