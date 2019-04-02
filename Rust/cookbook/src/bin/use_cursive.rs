extern crate cursive;
use cursive::views::{Dialog, TextView};
use cursive::Cursive;

fn main() {
    let mut siv = Cursive::default();
    siv.add_layer(
        Dialog::around(TextView::new("Hello, Dialog"))
            .title("Dialog")
            .button("Quit", |s| s.quit()),
    );
    siv.run();
}
