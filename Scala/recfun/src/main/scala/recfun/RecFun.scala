package recfun

object RecFun extends RecFunInterface :

  def main(args: Array[String]): Unit =
    println("Pascal's Triangle")
    for row <- 0 to 10 do
      for col <- 0 to row do
        print(s"${pascal(col, row)} ")
      println()
  /**
   * Exercise 1
   */
  def pascal(c: Int, r: Int): Int =
    if c == 0 && r == 0 then 1 else pascal(c - 1, r - 1) + pascal(c, r - 1)

  pascal(1,1)
  /**
   * Exercise 2
   */
  def balance(chars: List[Char]): Boolean = ???

  /**
   * Exercise 3
   */
  def countChange(money: Int, coins: List[Int]): Int = ???
