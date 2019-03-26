extern crate wallpaper;

fn main() {
    println!("{:?}", wallpaper::get());
    wallpaper::set_from_url("https://source.unsplash.com/random").unwrap();
    println!("{:?}", wallpaper::get());
}
