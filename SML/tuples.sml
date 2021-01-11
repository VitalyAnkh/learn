fun swap (pr : int * bool) =
    (#2 pr, #1 pr)

(* ((int * int ) * (int * int) -> int) *)  
fun sum_two_pairs (p1 : (int * int), p2: (int * int)) =
    (#1 p1) + (#2 p1) + (#1 p2) + (#2 p2)

fun div_mod (x : int, y : int) =
    (x div y, x mod y)


fun sort_pair(p : (int * int)) =
    if (#1 p) < (#2 p)
    then p                    
    else (#2 p, #1 p)
