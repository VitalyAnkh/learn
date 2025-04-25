def pred (n : Nat) : Nat :=
  match n with
  | Nat.zero => Nat.zero
  | Nat.succ k => k

#eval pred 5

#eval pred 0

def Nat.even (n : Nat) : Bool :=
  match n with
  | Nat.zero => true
  | Nat.succ k => not (even k)

#eval Nat.even Nat.zero
#eval Nat.even 5

-- def evenLoops (n : Nat) : Bool :=
--   match n with
--   | Nat.zero => true
--   | Nat.succ k => not (evenLoops n)

def plus (m : Nat) (n : Nat) : Nat :=
  match n with
  | Nat.zero => m
  | Nat.succ k => Nat.succ (plus m k)

#eval plus 3 5

def times (m : Nat) (n : Nat) : Nat :=
  match n with
  | Nat.zero => Nat.zero
  | Nat.succ k => plus m (times m k)

#eval times 3 5

def minus (m : Nat) (n : Nat) : Nat :=
  match n with
  | Nat.zero => m
  | Nat.succ k => pred (minus m k)

#eval minus 5 3

-- def div (m : Nat) (n : Nat) : Nat :=
--   if n < 0 then
--     0
--   else
--     Nat.succ (div (m - n) n)
  

def use_if (n : Nat) : IO Unit :=
  if n < 0 then
    IO.println "negative!"
  else
    IO.println "not negative!"

#eval use_if 0
