def f(a: Int, b: Int) = a - b
f(3, 5)
def sumF(f: Int => Int)(a: Int, b: Int): Int = {
  if (a > b) 0 else f(a) + sumF(f)(a + 1, b)
}
def productF(f: Int => Int)(a: Int, b: Int): Int = {
  if (a > b) 1 else f(a) * productF(f)(a + 1, b)
}

val l = List(1, 2, 3, 4, 5)

val list2 = List(List(1, 2), List(3, 4, 5))


