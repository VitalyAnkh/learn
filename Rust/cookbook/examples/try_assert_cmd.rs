extern crate assert_cmd;
use assert_cmd::prelude::*;
use std::process::Command;

fn main() {
    let mut cmd = Command::new("ls").unwrap();
    cmd.assert().success();
}
