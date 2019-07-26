fn main() {
    let s = String::from("FFFFFFFFFFFFFFFFFFFFf");
    dbg!(detect_capital_use(s));
}

pub fn detect_capital_use(word: String) -> bool {
    let mut word_iter = word.chars().peekable();
    match word_iter.next() {
        Some(first_char) => {
            if let Some(&second_char)=word_iter.peek(){
                if first_char.is_lowercase() && second_char.is_uppercase(){
                    return false;
                }
            }
        }
        None => return true,
    };
    if word_iter.clone().all(|c| c.is_uppercase()) {
        true
    } else if word_iter.clone().all(|c| c.is_lowercase()) {
        true
    } else {
        false
    }
}

