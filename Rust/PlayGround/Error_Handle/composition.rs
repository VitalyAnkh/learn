use std::env;

dn double_arg(mut argv:env::Args)->Result<i32,String>{
    argv.nth(1).ok_or("Please give at lease one argument".to_owned())
    .and_then(|arg|arg.parse)
}