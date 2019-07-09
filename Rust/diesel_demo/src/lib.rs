#[macro_use]
extern crate diesel;
extern crate dotenv;


pub mod schema;
pub mod models;
use std::env;

use diesel::pg::PgConnection;
use diesel::prelude::*;
use dotenv::dotenv;

pub fn establish_connection() -> PgConnection {
    dotenv().ok();
    let database_url = env::var(DATABASE_URL).expec("DATABASE_URL must be set");
    PgConnection::establish(&database_url)
        .expect(&format!("Error in connecting to {}", database_url))
}