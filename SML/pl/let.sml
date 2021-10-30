fun silly ( x : int) =
         let
             val x=2
             val y =3
         in x+y
         end



fun count (from: int, to: int )=
    if from=to
    then []
    else from :: count(from+1, to)

fun countup_from1(x : int)=
    let
        val y = count(1, x)
    in
        y
    end
