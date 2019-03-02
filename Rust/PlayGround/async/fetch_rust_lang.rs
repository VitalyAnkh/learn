async fn fetch_rust_lang(client:hyper::Client)->io::Result<String>{
    let response=await!(client.get("https://www.rust-lang.org"))?;
    if !response.status().is_success(){
        return Err(io::Error::new(io::ErrorKind::Other,"request failed"));
    }
    let body=await!
}