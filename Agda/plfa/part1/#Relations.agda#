module plfa.part1.Relations where

import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl; cong)
open import Data.Nat using (ℕ; zero; suc; _+_)
open import Data.Nat.Properties using (+-comm)

data _≤_ : ℕ → ℕ → Set where
    z≤n : ∀ {n : ℕ}
         ----------
          → zero ≤ n

    s≤s : ∀ {m n : ℕ}
          → m ≤ n
          ----------
          → suc m ≤ suc n

_ : 2 ≤ 4
_ = s≤s {1} {3} (s≤s {0} {2} (z≤n {2}))

_ : 2 ≤ 4
_ = s≤s {m = 1} {n = 3} (s≤s {m = 0} {n = 2} (z≤n {n = 2}))

infix 4 _≤_

inv-s≤s : ∀ {m n : ℕ}
    → suc m ≤ suc n
    → m ≤ n
inv-s≤s (s≤s m≤n) = m≤n

inv-z≤n : ∀ {m : ℕ}
  → m ≤ zero
  → m ≡ zero
inv-z≤n z≤n = refl

-- define exact division
data _||_ : ℕ → ℕ → Set where
  one||n : ∀ {n : ℕ}
    → 1 || n

≤-refl : ∀ {n : ℕ}
  → n ≤ n
≤-refl {zero} = z≤n
