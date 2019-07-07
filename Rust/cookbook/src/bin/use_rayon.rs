#![feature(todo_macro)]

use std::io;

use rayon::prelude::*;

struct GigabyteMap;

fn process_file_in_parallel(filenames: Vec<String>, glossary: &GigabyteMap) -> io::Result<()> {
    filenames.par_iter()
        .map(|filename| process_file(filename, glossary))
        .reduce_with(|r1, r2| {
            if r1.is_err() { r1 } else { r2 }
        })
        .unwrap_or(Ok(()))
}

fn process_file(filename: &str, glossary: &GigabyteMap) -> io::Result<()> {
    todo!()
}

fn main() {}