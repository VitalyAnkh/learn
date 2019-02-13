#[macro_use]
extern crate structopt;

use std::path::PathBuf;
use structopt::StructOpt;

/// A command line tool to convert number's base
#[derive(StructOpt, Debug)]
#[structopt(name = "base convertor")]
struct Opt {
    // A flag, true if used in the command line. Note doc comment will
    // be used for the help message of the flag.
    /// Activate debug mode
    #[structopt(short = "d", long = "debug")]
    debug: bool,

    // The number of occurrences of the `v/verbose` flag
    /// Verbose mode (-v, -vv, -vvv, etc.)
    #[structopt(short = "v", long = "verbose", parse(from_occurrences))]
    verbose: u8,

    /// Set speed
    #[structopt(short = "s", long = "source-base", default_value = "10")]
    inputbase: i8,

    /// Output file
    #[structopt(short = "o", long = "outputbase", default_value = "16")]
    outputbase: PathBuf,

    /// Number of cars
    #[structopt(short = "c", long = "nb-cars")]
    nb_cars: Option<i32>,

    /// admin_level to consider
    #[structopt(short = "l", long = "level")]
    level: Vec<String>,

    /// Files to process
    #[structopt(name = "FILE", parse(from_os_str))]
    files: Vec<PathBuf>,
}

fn main() {
    let opt = Opt::from_args();
    println!("{:?}", opt);
}
