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
