module plfa.Naturals where

import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl)
open Eq.≡-Reasoning using (begin_; _≡⟨⟩_; _∎)

data ℕ : Set where
  zero : ℕ
  suc : ℕ → ℕ

{-# BUILTIN NATURAL ℕ #-}

_+_ : ℕ → ℕ → ℕ
zero + n = n
suc n + m = suc (n + m)
_*_ : ℕ → ℕ → ℕ
zero * n = zero
(suc m) * n = n + (m * n)

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


_ : 3 * 4 ≡ 12
_ =
  begin
    3 * 4
  ≡⟨⟩
    4 + (2 * 4)
  ≡⟨⟩
    4 + (4 + (1 * 4))
  ≡⟨⟩
    4 + (4 + (4 + (0 * 4)))
  ≡⟨⟩
    4 + (4 + (4 + 0 ))
  ≡⟨⟩
    12

  ∎

_^_ : ℕ → ℕ → ℕ
n ^ 0 = suc zero
n ^ (suc m) = n * (n ^ m)

_∸_ : ℕ → ℕ → ℕ
m ∸ zero = m
zero ∸ suc n = zero
suc m ∸ suc n = m ∸ n

_ : 1 + 1 ≡ 2
_ =
  begin
    1 + 1
  ≡⟨⟩
    2
  ∎
