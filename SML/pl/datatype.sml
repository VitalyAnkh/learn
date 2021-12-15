datatype mytype = TwoInts of int * int
                                       | Str of string
                  | Pizza

fun f (x : mytype) =
    case x of
        Pizza => 3
      | Str s => 8
      | TwoInts (i1, i2) => i1 + i2

datatype Exp = Constant of int
             | Negate of Exp
             | Add of Exp * Exp
             | Multiply of Exp * Exp

fun eval e = case e of
                 Constant i => i
               | Negate e => ~ (eval e)
               | Add(e1, e2) => (eval e1) + (eval e2)
               | Multiply(e1, e2) => (eval e1) * (eval e2)
