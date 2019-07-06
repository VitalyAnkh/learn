#![feature(custom_attribute)]
#![feature(associated_type_bounds)]

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
