#[macro_use]
extern crate structopt;

use std::path::PathBuf;

use structopt::StructOpt;

#[derive(StructOpt, Debug)]
#[structopt(name = "Boring Work", about = "A boring work for BJTU homework.")]
/// Help message for test
struct Opt {
    ///Activate debug mode
    #[structopt(short = "d", long = "debug")]
    debug: bool,
    /// Set speed
    speed: f64,
    /// Input file
    input: PathBuf,
    /// Output file, stdout if not present
    #[structopt(parse(from_os_str))]
    output: Option<PathBuf>,
    #[structopt(subcommand)]
    cmd: Do,
}
//#[derive(Debug, StructOpt)]
//#[structopt(name = "example", about = "A example of StructOpt usage.")]
//#[derive(Debug, StructOpt)]
//#[strucopt(rename_all="kebab-case")]
//struct Config {
//    filesavepath: std::path::PathBuf,
//    filename: String,
//    maxvalue1: i32,
//    minvalue1: i32,
//    maxvalue2: i32,
//    minvalue2: i32,
//    recordcount1: i32,
//    recordcount2: i32,
//}

#[derive(StructOpt, Debug)]
#[structopt(name = "git", about = "the stupid content tracker")]
enum Do {
    #[structopt(name = "add")]
    Add {
        #[structopt(short = "i")]
        interactive: bool,
        #[structopt(short = "p")]
        patch: bool,
        #[structopt(parse(from_os_str))]
        files: Vec<PathBuf>,
    },
    #[structopt(name = "fetch")]
    Fetch {
        #[structopt(long = "dry-run")]
        dry_run: bool,
        #[structopt(long = "all")]
        all: bool,
        repository: Option<String>,
    },
    #[structopt(name = "commit")]
    Commit {
        #[structopt(short = "m")]
        message: Option<String>,
        #[structopt(short = "a")]
        all: bool,
    },
}

fn main() {
    let opt = Opt::from_args();
    println!("________::::::::::::::::::::::::_______");
    println!("{:?}", opt);
}
