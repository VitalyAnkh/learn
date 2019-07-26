
module peano where

import Relation.Binary.PropositionalEquality as Eq

data ℕ : Set where
  zero : ℕ
  suc : ℕ → ℕ

_+_ : ℕ → ℕ → ℕ
zero + zero = zero
n + zero = zero
zero + n = n
(suc n) + ń  = suc (n + ń)

_*_ : ℕ → ℕ → ℕ
zero * n = zero
(suc zero) * n = n
(suc n) * m = m + ( n * m)

data Bool : Set where
  false : Bool
  true : Bool

_or_ : Bool → Bool → Bool
false or false = false
_  or _ = true

if_then_else_ : {A : Set} → Bool →   A → A → A
if true then a else b = a
if false then a else b = b

data List ( B : Set ) : Set where
  [] : List B
  _::_ : List B → List B


identity : (A : Set) → A → A
identity A x = x

data MyType : Set where
  liqi : MyType

zero′ : MyType
zero′ = identity MyType liqi

apply : (A : Set) → (B : A → Set) →
  ((x : A) → B x ) → ( a : A ) → B a
apply A B f a = f a

identity₂ : (A : Set) → A → A
identity₂ = \A x → x

identity₃ : (A : Set) → A → A
identity₃ = \(A : Set)(x : A) → x

identity₄ : (A : Set) → A → A
identity₄ = \(A : Set) x → x

id : {A : Set} → A → A
id x = x

silly : {A : Set} {x : A} → A
silly {_} { x } = x

false′ : Bool
false′ = silly {x = false}

one : ℕ
one = identity _ (suc zero)

_o_ : {A : Set} {B : A → Set}{C : (x : A ) → B x → Set}
  (f : {x : A}(y : B x) → C x y) (g : (x : A) → B x)
  (x : A) → C x (g x)
(f o g) x = f (g x)

data _≤_ : ℕ → ℕ → Set where
  z≤s : {n : ℕ} → zero ≤ n
  s≤s : {n m : ℕ} → n ≤ m → suc n ≤ suc m

