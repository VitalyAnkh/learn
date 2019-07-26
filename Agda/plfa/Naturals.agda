module plfa.Naturals where

import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl)
open Eq.≡-Reasoning using (begin_; _≡⟨⟩_; _∎)

data ℕ : Set where
  zero : ℕ
  suc : ℕ → ℕ

{-# BUILTIN NATURAL ℕ #-}

_+_ : ℕ → ℕ → ℕ
n + zero = n
zero + n = n
suc n + m = suc (n + m)

_*_ : ℕ → ℕ → ℕ
zero * n = zero
n * zero = zero
suc zero * n = n
suc n * m = m + (n * m)

_ : 2 + 3 ≡ 5
_ =
  begin
    2 + 3
  ≡⟨⟩
    (suc (suc zero) + (suc (suc (suc zero))))
  ≡⟨⟩
    suc ((suc zero) + (suc (suc (suc zero))))
  ≡⟨⟩
    suc (suc (zero  + (suc (suc (suc zero)))))
  ≡⟨⟩
    suc (suc (suc (zero + (suc (suc zero)))))
  ≡⟨⟩
    suc (suc (suc (suc (zero + (suc zero)))))
  ≡⟨⟩
    suc (suc (suc (suc (suc (zero + zero)))))
  ≡⟨⟩
    suc (suc (suc (suc (suc zero))))
  ≡⟨⟩
    5

  ∎

_ : 1 + 3 ≡ 4
_ = refl

_ : 3 + 4 ≡ 7
_ =
  begin
    3 + 4
  ≡⟨⟩
    suc (2 + 4)
  ≡⟨⟩
    suc (suc (1 + 4))
  ≡⟨⟩
    suc (suc (suc (zero + 4)))
  ≡⟨⟩
    suc (suc (suc 4))
  ≡⟨⟩
    7

  ∎
