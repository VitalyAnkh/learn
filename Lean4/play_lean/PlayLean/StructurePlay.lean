def name : String := "vitalyr"

inductive MyBool where
  | false : MyBool
  | true : MyBool

def f : MyBool := MyBool.false

def isZero (n : Nat) : Bool :=
  match n with
    | Nat.zero => true
    | Nat.succ _ => false

#eval isZero 5

#check isZero

structure Point3D where
  x : Float
  y : Float
  z : Float
deriving Repr

structure Point where
  x : Float
  y : Float
deriving Repr

#check Point3D

#check ({x := 0.0, y := 0.0, z := 0.0} : Point3D)

#eval Point3D.mk 1.0 2.0 3.0

def Point.modifyBoth (f : Float -> Float) (p : Point) : Point :=
  {x := f p.x, y := f p.y}

def addOne (n : Float) : Float :=
  n + 1.0

def p1 : Point := { x := 3.0, y := 4.0}

#eval Point.modifyBoth addOne ({x := 0.0, y := 1.0} : Point)
#eval p1.modifyBoth Float.floor

structure RectangularPrism where
  height : Float
  width : Float
  depth : Float
deriving Repr

def volumn (rp: RectangularPrism) : Float :=
  rp.height * rp.width * rp.depth

structure Segment where
  initial : Point
  final : Point
deriving Repr

def Segment.length (s: Segment) : Float :=
  ((s.final.x - s.initial.x) ^ 2 + (s.final.y - s.initial.y) ^ 2) ^ 0.5

def s1 : Segment := { initial := { x := 0.0, y := 0.0}, final := { x := 1.0, y := 1.0} }

#eval s1.length

structure Book where
  mkBook ::
  title : String
  author : String
  price : Float
deriving Repr
