use std::cell::Cell;

use actix_web::{App, HttpServer, Responder, web};

struct AppState {
    counter: Cell<i32>
}

fn index(data: web::Data<AppState>) -> impl Responder {
    let count = data.counter.get() + 1;
    data.counter.set(count);
    format!("Request number: {}", count)
}

fn main() {
    HttpServer::new(|| {
        App::new()
            .data(AppState { counter: Cell::new(0) })
            .route("/", web::get().to(index))
    })
        .bind("localhost:8888")
        .unwrap()
        .run()
        .unwrap();
}