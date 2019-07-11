use actix_web::{App, HttpResponse, HttpServer, Responder, web};
use actix_web::web::resource;

fn scoped_config(cfg: &mut web::ServiceConfig) {
    cfg.service(
        web::resource("/test")
            .route(web::get().to(||HttpResponse::Ok().body("test")))
            .route(web::head().to(||HttpResponse::MethodNotAllowed()))
    );
}


fn config(cfg: &mut web::ServiceConfig) {
    cfg.service(
        web::resource("/app")
            .route(web::get().to(||HttpResponse::Ok().body("app")))
            .route(web::head().to(|| HttpResponse::MethodNotAllowed()))
    );
}

fn main() {
    HttpServer::new(||
        App::new().configure(config)
            .service(web::scope("/api")
                .configure(scoped_config)
                .route("/test", web::get().to(||HttpResponse::Ok().body("/"))))
    )
        .bind("localhost:9001")
        .unwrap()
        .run()
        .unwrap();
}