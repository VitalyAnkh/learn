package recfun

object RecFun extends RecFunInterface:

  def mcin(args: Array[String]): Unit =
    println("Pascal's Triangle")
    for row <- 0 to 10 do
      for col <- 0 to row do print(s"${pascal(col, row)} ")
      println()

  /** Exercise 1
    */
  def pascal(c: Int, r: Int): Int =
    if c == 0 && r == 0 then 1 else pascal(c - 1, r - 1) + pascal(c, r - 1)

  /** Exercise 2
    */
  def balance(chars: List[Char]): Boolean =
    val unbalanced = 0
    def balance2(chars: List[Char], unbalanced: Int): Boolean = chars match
      case Nil         => unbalanced == 0
      case '(' :: tail => balance2(tail, unbalanced + 1)
      case ')' :: tail =>
        if unbalanced == 0 then false else balance2(tail, unbalanced - 1)
      case _ :: tail => balance2(tail, unbalanced)
    balance2(chars, unbalanced)

  /** Exercise 3
    */
  def countChange(money: Int, coins: List[Int]): Int =
    if money == 0 then 1
    else if money < 0 || coins.isEmpty then 0
    else countChange(money - coins.head, coins) + countChange(money, coins.tail)
