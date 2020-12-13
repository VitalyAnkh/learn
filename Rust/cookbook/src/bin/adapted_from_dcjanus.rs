use std::collections::HashMap;

use failure;

fn main() {}

//fn nucleotide_coundts(s: &str) -> Result<HashMap<char, usize>, failure::Error> {
//    let mut result_map:HashMap<char,usize>=HashMap::new();
//    s.chars()
//        .map(|c| counts(c, s) .map_or_else(|_|Err("counts nothing"),|Ok(n)|result_map.insert(c,n).unwrap()))
//        .collect()
//}

fn counts(c: char, dna: &str) -> Result<HashMap<char, usize>, failure::Error> {
    todo!()
}
