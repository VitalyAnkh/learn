// case class ::[+T](head: T, tail: List[T]) extends List[T]
// case object MyNil extends List[Nothing]

// trait List[+T]:
//     def prepend(elem: T): List[T] = new ::(elem, this)
import scala.collection
def my_last[T](xs: List[T]): T = xs match
  case List()     => throw Error("last of empty list")
  case ::(x, Nil) => x
  case ::(x, ys)  => my_last(ys)

def my_init[T](xs: List[T]): List[T] = xs match
  case List()   => throw Error("init of empty list")
  case x :: Nil => List(x)
  case x :: ys  => x :: (my_init(ys))

extension [T](xs: List[T])
  def my_++(ys: List[T]): List[T] = xs match
    case List()      => ys
    case List(x)     => x :: ys
    case x :: sub_xs => x :: sub_xs.my_++(ys)

extension [T](xs: List[T])
  def reverse: List[T] = xs match
    case List()      => xs
    case x :: List() => List(x)
    case x :: ys     => ys.reverse.my_++(List(x))

def removeAt[T](n: Int, xs: List[T]): List[T] = xs match
  case Nil     => Nil
  case y :: ys => if n == 0 then ys else y :: removeAt(n - 1, ys)

def flatten(xs: Any): List[Any] = xs match
  case Nil     => Nil
  case y :: ys => flatten(y) ++ flatten(ys)
  case _       => xs :: Nil
val l1 = List(1, 2, 3, 4)
val l2 = List(5, 6, 7, 8)
my_last(l1)
my_init(l1)
l1.my_++(l2)
l1.reverse
removeAt(6, l1)

val l3 = List(1, 2, List(3, 4), List(5, 6, 7, List(8)), 9)
flatten(l3)

List(List(1, 2, 3), 4) match
  case List(ys) :: zs => ys
  case xs             => xs

extension [T](xs: List[T])
  def my_map[U](f: T => U): List[U] = xs match
    case Nil      => Nil
    case x :: xs1 => f(x) :: xs1.map(f)

  def my_filter(p: T => Boolean): List[T] = xs match
    case Nil      => Nil
    case x :: xs1 => if p(x) then x :: xs1.my_filter(p) else xs1.my_filter(p)

l1.my_map(x => x * 2)
var p = (x: Int) => (x > 3)
l1.my_filter(p)
l1.my_filter(x => x % 2 == 0)

(0 :: l1).reduceLeft((x, y) => x + y)
l1.foldLeft(0)(_ + _)

extension [T](xs: List[T])
  def myFoldRight[U](z: U)(op: (T, U) => U): U = xs match
    case Nil      => throw Exception("Nil.myFoldRight")
    case x :: Nil => op(x, z)
    case x :: xs1 => op(x, xs1.myFoldRight(z)(op))

  def myReduceRight(op: (T, T) => T): T = xs match
    case Nil      => throw Exception("Nil.myReduceRight")
    case x :: Nil => x
    case x :: xs1 => op(x, xs1.myReduceRight(op))
  def myReverse(): List[T] = xs.foldLeft(List[T]())((xs1, x) => x :: xs1)

l1.myFoldRight(0)(_ + _)
(0 :: l1).myReduceRight(_ + _)
def myMap[T, U](xs: List[T], f: T => U): List[U] =
  xs.foldRight(List[U]())((x, ys) => f(x) :: ys)

def myLength[T](xs: List[T]): Int =
  xs.foldRight(0)((x, length) => length + 1)
myMap(l1, _ + 10)
myLength(l1)

def squareSum(xs: List[Int]): Int =
  xs.foldLeft(0)((x, y) => x + y * y)

squareSum(l1)
l1.map(x => x * x).sum

val v = (1 to 5).flatMap(n => Vector(n, n, n, n, n).zip(Vector(6, 7, 8, 9, 10)))
v

def isPrime(n: Int): Boolean =
  (2 until n).forall(n % _ != 0)

def filterPrimeFromSum(
    xs: Vector[Int],
    ys: Vector[Int]
): Vector[Tuple2[Int, Int]] =
  xs.flatMap(x => ys.map(y => (x, y))).filter((x, y) => isPrime(x + y))

isPrime(4)

filterPrimeFromSum(Vector(1, 2, 3, 4), Vector(5, 6, 7, 8))

def scalarProduct(xs: Vector[Int], ys: Vector[Int]): Int =
  (for (x, y) <- xs.zip(ys) yield x * y).sum

def scalarProduct2(xs: Vector[Int], ys: Vector[Int]): Int =
  (for x <- xs; y <- ys yield x * y).sum
val v1 = Vector(1, 2, 3, 4)
val v2 = Vector(5, 6, 7, 8)

scalarProduct(v1, v2)
scalarProduct2(v1, v2)

val m1 = Map("red" -> 1, "green" -> 2)
val m2 = m1 + ("green" -> 3)
m2
m1
m1 ++ m2
m1

val fruit = List("apple", "orange", "banana", "pear", "watermelon")
fruit.sortWith(_.length < _.length)

class Polynom(nonZeroTerms: Map[Int, Double]):
  def terms = nonZeroTerms.withDefaultValue(0.0)
  def +(other: Polynom) = ???
  override def toString =
    val termString =
      for (exp, coeff) <- terms.toList.sorted.reverse
      yield
        val exponent = if exp == 0 then "" else s"x^$exp"
        if coeff < 0 then s"($coeff$exponent)" else s"$coeff$exponent"
    if termString.isEmpty then "0" else termString.mkString(" + ")

val polynom1 = Polynom(Map(3 -> 3, 1 -> -1, 0 -> 1))
polynom1.toString
val polynom2 = Polynom(Map())
polynom2.toString
