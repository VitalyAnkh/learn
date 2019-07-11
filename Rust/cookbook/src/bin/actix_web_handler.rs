extern crate serde;
#[macro_use]
extern crate serde_derive;

use actix_web::{App, Error, HttpRequest, HttpResponse, HttpServer, Responder, web, web::Bytes};
use serde::Serialize;

fn index(_req: HttpRequest) -> impl Responder {
    Bytes::from_static(b"Hello, world!")
}

#[derive(Serialize)]
struct MyStruct {
    name: &'static str,
}

impl Responder for MyStruct {
    type Error = Error;
    type Future = Result<HttpResponse, Error>;

    fn respond_to(self, _req: &HttpRequest) -> Self::Future {
        let body = serde_json::to_string(&self)?;

        Ok(HttpResponse::Ok()
            .content_type("application/json")
            .body(body))
    }
}

fn index2() -> impl Responder {
    MyStruct { name: "VitalyR" }
}

fn main() {
    HttpServer::new(|| App::new()
        .route("/", web::get().to(index2)))
        .bind("localhost:9009")
        .unwrap()
        .run()
        .unwrap();
}
