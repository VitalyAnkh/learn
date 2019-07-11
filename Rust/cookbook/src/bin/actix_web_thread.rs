use std::sync::mpsc;
use std::thread;

use actix_rt;
use actix_web::{App, HttpResponse, HttpServer, Responder, web};
use futures::future::Future;

pub fn main() {
    let (tx, rx) = mpsc::channel();
    thread::spawn(move || {
        let sys = actix_rt::System::new("http-server");
        let addr = HttpServer::new(||
            App::new().route("/", web::get().to(|| HttpResponse::Ok())))
            .bind("127.0.0.1:9003")
            .unwrap()
            .shutdown_timeout(60)
            .start();

        let _ = tx.send(addr);
        let _ = sys.run();
    });
    let addr = rx.recv().unwrap();
    let _ = addr.pause()
        .wait()
        .map(|_| println!("`actix::Server::ServerCommand::Pause`"));
    let _ = addr.resume()
        .wait()
        .map(|_| println!("`actix::Server::ServerCommand::Resume`"));
    let _ = addr.stop(true)
        .wait()
        .map(|_| println!("`actix::Server::ServerCommand::Stop`"));
}