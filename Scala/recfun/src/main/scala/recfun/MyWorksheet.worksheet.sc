import recfun.RecFun.*
def loop: Boolean = loop

def pascal(c: Int, r: Int): Int =
  if (c == 0 || c == r) 1
  else pascal(c - 1, r - 1) + pascal(c, r - 1)

val x = 42

pascal(3, 4)

x * x

pascal(3, 4)

pascal(0, 2)

pascal(1, 2)

pascal(1, 3)

assert(balance("(if (zero? x) max (/ 1 x))".toList))

balance(
  "I told him (that it's not (yet) done).\n(But he wasn't listening)".toList
)

!balance(":-)".toList)

!balance("())(".toList)

"fdsafd".toList
// ------ countChange tests -------------------------------------------------

//assertEquals(countChange(4, List(1, 2)), 3)

//assertEquals(countChange(300, List(5, 10, 20, 50, 100, 200, 500)), 1022)

//assertEquals(countChange(301, List(5, 10, 20, 50, 100, 200, 500)), 0)

//assertEquals(countChange(300, List(500, 5, 50, 100, 20, 200, 10)), 1022)

// ------ pascal tests ------------------------------------------------------

//assertEquals(pascal(0, 2), 1)

//assertEquals(pascal(1, 2), 2)

//assertEquals(pascal(1, 3), 3)

val y =
  if (x == 42)
    "The Answer"
  else
    "Something else"

val countryOfCaptial = Map("France" -> "Paris", "Japan" -> "Tokyo")