fn update_light(current: &str) -> String {
    match current{
        "green"=>String::from("yellow"),
        "yellow"=>String::from("red"),
        "red"=>String::from("green"),
        _=>String::from("Error!")
    }
}