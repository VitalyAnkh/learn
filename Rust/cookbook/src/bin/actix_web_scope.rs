use actix_web::{App, HttpServer, Responder, web};

fn index() -> impl Responder {
    "Hello, world! VitalyR!"
}

struct State1;

struct State2;

fn index2() -> impl Responder {
    "Hello, world, Ankh!"
}

fn main() {
    HttpServer::new(|| App::new()
        .service(
            web::scope("app1")
                .data(State1)
                .route("/index.html", web::get().to(index))
        )
        .service(
            web::scope("app2")
                .data(State2)
                .route("/index.html", web::get().to(index2))))
        .bind("localhost:8999")
        .unwrap()
        .run()
        .unwrap();
}