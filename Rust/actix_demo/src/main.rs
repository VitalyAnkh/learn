use actix_web::{App, HttpRequest, HttpResponse, HttpServer, web,Responder};
use actix_web::dev::ResourcePath;
use std::cell::Cell;

fn greet(req: HttpRequest) -> impl Responder {
    let name = req.match_info().get("name").unwrap_or("World");
    format!("Hello, {}!", &name)
}

fn not_happy() -> impl Responder {
    HttpResponse::Ok().body("I'm not happy")
}

struct AppState{
    counter:Cell<i32>,
}

fn index(data:web::Data<AppState>)->impl Responder{
    let count=data.counter.get()+1;
    data.counter.set(count);
    format!("Request number: {}",count)
}

fn main() {
    HttpServer::new(|| {
        App::new()
            .data(AppState{
                counter:Cell::new(0),
            })
            .route("/index",web::get().to(index))
            .route("/", web::get().to(greet))

            .route("/not_happy", web::get().to(not_happy))
            .route("/{name}", web::get().to(greet))
    })
        .bind("127.0.0.1:8999")
        .expect("Can not bind to port 8999")
        .run()
        .unwrap();
}