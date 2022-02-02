def loop: Boolean = loop

trait Expr:
  case class Var(var s: String) extends Expr
