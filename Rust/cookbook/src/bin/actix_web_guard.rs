use actix_web::{App, guard, HttpResponse, HttpServer, Responder, web};

fn main() {
    HttpServer::new(|| App::new()
        .service(
            web::scope("/")
                .guard(guard::Header("Host", "www.rust-lang.org"))
                .route("", web::to(|| HttpResponse::Ok().body("www")))
        )
        .service(
            web::scope("/")
                .guard(guard::Header("Host", "user.rust-lang.org"))
                .route("", web::to(|| HttpResponse::Ok().body("user")))
        )
    ).bind("localhost:9000")
        .unwrap()
        .run()
        .unwrap();
}

