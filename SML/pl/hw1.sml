(* Homework 1 *)

fun is_older (x:(int * int * int), y:(int * int * int)) =
    if #1 x < #1 y then true else if #2 x < #2 y then true else if #3 x < #3 y then true else false

fun number_in_month (x:(int*int*int) list, y:int)=
    if null x then 0 else if #2 (hd x) = y then (1 +number_in_month(tl x, y)) else number_in_month(tl x, y)

fun number_in_months (x:(int*int*int) list, y:int list)=
    if null y then 0 else number_in_month (x, (hd y)) +number_in_months (x, tl y)
