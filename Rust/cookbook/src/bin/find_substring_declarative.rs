#[derive(Debug)]
pub struct SubstringLocation {
    pub line_index: usize,
    pub substring_index: usize,
}

pub fn find(string: &str, substring: &str) -> Vec<SubstringLocation> {
    string
        .lines()
        .enumerate()
        .flat_map(|(line_index, line)| {
            line.match_indices(substring)
                .map(move |(substring_index, _)| SubstringLocation {
                    line_index,
                    substring_index,
                })
        })
        .collect()
}

fn main() {
    let string = "lovedsafdsalksa;lfdslovee ewf saldsl;";
    let substring = "love";
    dbg!(find(string, substring));
}
