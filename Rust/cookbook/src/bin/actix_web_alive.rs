use actix_web::{App, HttpServer, Responder, web, HttpResponse};

fn main(){
    let one=HttpServer::new(||
    App::new().route("/",web::get().to(||HttpResponse::Ok())))
        .keep_alive(75);
    let two=HttpServer::new(||
        App::new().route("/",web::get().to(||HttpResponse::Ok())))
        .keep_alive(75);
    let three=HttpServer::new(||
        App::new().route("/",web::get().to(||HttpResponse::Ok())))
        .keep_alive(75);
    one.bind("127.0.0.1::9004").unwrap().run().unwrap();
}