#[macro_use]
extern crate structopt;

use std::path::PathBuf;
use structopt::StructOpt;


#[derive(StructOpt)]
#[derive(Debug)]
struct Cli {
    pattern: String,
    #[structopt(parse(from_os_str))]
    path: std::path::PathBuf,

}

fn main() {
    let args = Cli::from_args();
    println!("{}", args.pattern);
    println!("{:#?}", args.path);
    println!("{:?}", args);

    let content = std::fs::read_to_string(&args.path).expect("could not read file");
    for line in content.lines() {
        if line.contains(&args.pattern)
        {
            println!("{}", line);
        }
    }
}