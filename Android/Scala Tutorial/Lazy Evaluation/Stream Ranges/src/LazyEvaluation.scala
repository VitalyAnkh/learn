import org.scalatest.{FlatSpec, Matchers}

object LazyEvaluation {
  var rec = 0
  def streamRange(lo: Int, hi: Int): Stream[Int] = {
    rec = rec + 1
    if (lo >= hi) Stream.empty
    else Stream.cons(lo, /*call the streamRange for the rest of the list*/)
  }

  def main(args: Array[String]): Unit = {
    streamRange(1, 10).take(3).toList
    println(rec)

    streamRange(1, 10).take(5).toList
    println(rec)

    streamRange(1, 10).take(3).toList
    println(rec)
  }
}