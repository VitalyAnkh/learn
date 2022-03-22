open Base;;
let ratio x y =
  let open Float.0  in
  of_int x / of_int y

let x = 1;;

let y = 4;;
let languages = "OCaml, Rust, Haskell, Agda";;

let dashed_languages =
  let languages_list = String.split languages ~on:',' in
  String.concat ~sep:"-" languages_list;;
