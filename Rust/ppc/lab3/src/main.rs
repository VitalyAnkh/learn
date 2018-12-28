#[macro_use]
extern crate structopt;

use std::path::PathBuf;

use structopt::StructOpt;

use rand::Rng;

#[derive(StructOpt, Debug)]
#[structopt(name = "boring", about = "A boring BJTU homework.")]
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


fn main() {
    let opt = Opt::from_args();
    println!("________::::::::::::::::::::::::_______");
    println!("{:?}",opt);

    let mut rng=rand::thread_rng();
    let n1:u8=rng.gen();
    let n2:u16=rng.gen();
    println!("{}",n1);
    println!("{}",rng.gen::<i32>());


}

