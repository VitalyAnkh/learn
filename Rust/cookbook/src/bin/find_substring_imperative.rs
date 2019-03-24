#[derive(Debug)]
pub struct SubstringLocation {
    pub line_index: usize,
    pub substring_index: usize,
}

pub fn find(string: &str, substring: &str) -> Vec<SubstringLocation> {
    let mut line_index = 0usize;
    let mut locations = Vec::new();
    for line in string.lines() {
        for (substring_index, _) in line.match_indices(substring) {
            locations.push(SubstringLocation {
                line_index,
                substring_index,
            });
        }
        line_index += 1;
    }
    locations
}

fn main() {
    let string = "lovedsafdsalksa;lfdslovee ewf saldsl;";
    let substring = "love";
    dbg!(find(string, substring));
}
