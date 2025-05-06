structure PPoint (α : Type) where
  x : α
  y : α
deriving Repr

#eval ({ x := 3.0, y := 4.0} : PPoint Float)

def replaceX {α : Type} (p : PPoint α) (newX: α) : PPoint α :=
  {p with x := newX}

def origin : PPoint Float := {x := 0.0, y := 0.0}

#eval replaceX origin 1.0

#eval origin

#eval replaceX origin 1.0

inductive Sign where
  | pos
  | neg

def posOrNegThree (s : Sign) : match s with | Sign.pos => Nat | Sign.neg => Int :=
  match s with
  | Sign.pos => (3 : Nat)
  | Sign.neg => (-3 : Int)

#eval posOrNegThree Sign.neg

inductive MyList (α : Type) where
  | nil : MyList α
  | cons : α -> MyList α -> MyList α

def length {α : Type} (l : MyList α) : Nat :=
  match l with
  | MyList.nil => Nat.zero
  | MyList.cons _ l' => Nat.succ (length l')

#eval length (MyList.cons 3.0 (MyList.cons 4.0 MyList.nil))

def three_and_four : MyList Float := MyList.cons 3.0 (MyList.cons 4.0 MyList.nil)


def primesUnder10 : List Nat := [2, 3, 5, 7]

def MyList.head? (α : Type) (xs : MyList α) : Option α :=
  match xs with
  | MyList.nil => Option.none
  | MyList.cons x _ => Option.some x

#eval three_and_four.head?

#eval ([] : List Float).head?

#eval [].head? (α := Float)

def fives : String × Int := {fst := "five", snd := 5}

def sevens : String × Int × Nat := ("seven", 7, 2 + 5)

#eval sevens

-- universe level
-- inductive MyType : Type where
--   | ctor : (α : Type) → α → MyType

-- Exercises

-- Write a function to find the last entry in a list. It should return an Option.

def last_entry? {α : Type} (xs : List α) : Option α :=
  match xs with
  | [] => Option.none
  | x :: [] => Option.some x
  | _ :: xs' => last_entry? xs'

#eval last_entry? [1, 2, 3, 4]


-- Write a function that finds the first entry in a list that satisfies a given predicate. Start the definition with def List.findFirst? {α : Type} (xs : List α) (predicate : α → Bool) : Option α :=

def List.findFirst? {α : Type} (xs : List α) (predicate : α → Bool) : Option α :=
  match xs with
  | [] => Option.none
  | x :: xs' => if predicate x then Option.some x else List.findFirst? xs' predicate

def l : List Int := [1, 2, 5, 8, 3]

def biggerThanTwo (n: Int) : Bool := n > 2 
#eval l.findFirst? biggerThanTwo
