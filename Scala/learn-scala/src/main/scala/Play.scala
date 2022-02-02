class Play {

}

def loop: Boolean = loop

def sum(a: Int, b: Int): Int = a + b

def sumF(f:Int=> Int)(a: Int, b: Int): Int =
  if (a > b) 0 else f(a) + sumF(f)(a + 1, b)

def productF(f:Int=> Int)(a: Int, b: Int): Int =
  if (a > b) 1 else f(a) * productF(f)(a + 1, b)