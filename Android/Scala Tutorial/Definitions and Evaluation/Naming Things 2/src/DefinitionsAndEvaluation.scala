object DefinitionsAndEvaluation {

  def square(x: Double): Double = x * x

  def area(radius: Double): Double = 3.14159 * // reuse the square method here

  def main(args: Array[String]): Unit = {
    println(area(10))
  }
}