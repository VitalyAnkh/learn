extern crate pest;
#[macro_use]
extern crate pest_derive;

use std::ffi::CString;

use pest::error::Error;
use pest::Parser;

#[derive(Parser)]
#[grammar = "toy.pest"]
struct ToyParser;

fn main() {
    let parse_result = ToyParser::parse(Rule::ident_list, "number").unwrap();
    let tokens = parse_result.tokens();
    for token in tokens {
        println!("{:?}", token);
    }

    let pair = ToyParser::parse(Rule::enclosed, "(.. good ..) and more text").unwrap().next().unwrap();
    assert_eq!(pair.as_rule(),Rule::enclosed);
    assert_eq!(pair.as_str(),"(.. good ..)");
    let inner_rules = pair.into_inner();
    println!("{}", inner_rules);
}
