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
    /// Output file, stdout if not present
    #[structopt(parse(from_os_str))]
    output: Option<PathBuf>,
    /// Set file name
    #[structopt(short="n",long="name",default_value="data.txt")]
    filename:String,
    /// Set file save path
    #[structopt(long="path",default_value="../../../")]
    filesavepath:PathBuf,
    #[structopt(long="max1",default_value="1000000")]
    maxvalue1: i32,
    #[structopt(long="max2",default_value="1000000")]
    maxvalue2: i32,
    #[structopt(long="min1",default_value="1000000")]
    minvalue1: i32,
    #[structopt(long="min2",default_value="1000000")]
    minvalue2: i32,
    /// The Number of records in file
    #[structopt(long="rc1",default_value="1000000")]
    recordcount1: i32,
    /// The Number of records in file
    #[structopt(long="rc2",default_value="1000000")]
    recordcount2: i32,
//    #[structopt(subcommand)]
//    cmd: Do,
}

//#[derive(StructOpt, Debug)]
//#[structopt(name = "git", about = "the stupid content tracker")]
//enum Do {
//    #[structopt(name = "add")]
//    Add {
//        #[structopt(short = "i")]
//        interactive: bool,
//        #[structopt(short = "p")]
//        patch: bool,
//        #[structopt(parse(from_os_str))]
//        files: Vec<PathBuf>,
//    },
//    #[structopt(name = "fetch")]
//    Fetch {
//        #[structopt(long = "dry-run")]
//        dry_run: bool,
//        #[structopt(long = "all")]
//        all: bool,
//        repository: Option<String>,
//    },
//    #[structopt(name = "commit")]
//    Commit {
//        #[structopt(short = "m")]
//        message: Option<String>,
//        #[structopt(short = "a")]
//        all: bool,
//    },
//}

fn main() {
    let opt = Opt::from_args();
    println!("________::::::::::::::::::::::::_______");
    println!("{:?}",opt);
}

// opt是配置命令行程序用到的数据，config是使用该程序时用到的数据
//#[derive(Debug)]
//struct Config {
//    filesavepath: std::path::PathBuf,
//    filename: String,
//    maxvalue1: i32,
//    maxvalue2: i32,
//    minvalue1: i32,
//    minvalue2: i32,
//    recordcount1: i32,
//    recordcount2: i32,
//}