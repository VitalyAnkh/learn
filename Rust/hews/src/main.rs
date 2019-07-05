#![feature(custom_attribute)]

#[macro_use]
extern crate serde_derive;

extern crate serde;
extern crate serde_json;
mod app;
mod hackernews;
use app::App;
fn main() {
    let (app,rx)=App::new();
    app.launch(rx);
}
