module vitalyr.plfa.part1.Naturals where

import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl)
open Eq.≡-Reasoning using (begin_; _≡⟨⟩_; _∎)

data ℕ : Set where
  zero : ℕ
  suc : ℕ → ℕ

{-# BUILTIN NATURAL ℕ #-}

-- zero : ℕ

_+_ : ℕ → ℕ → ℕ
zero + n = n
suc m + n = suc (m + n)
-- zero + n = n
-- (suc m) + n = suc (m + n)

_-_ : ℕ → ℕ → ℕ
zero - n = zero
n - zero = n
(suc m) - (suc n) = m - n


_ : 2 + 3 ≡ 5
_ =
  begin
    2 + 3
  ≡⟨⟩
    suc ( 1 + 3 )
  ≡⟨⟩
    suc (suc (0 + 3))
  ≡⟨⟩
    suc (suc 3)
  ≡⟨⟩
    suc 4
  ≡⟨⟩
    5
  ∎

*_example : 3 + 4 ≡ 7
*_example =
  begin
    3 + 4
  ≡⟨⟩
    suc (2 + 4)
  ≡⟨⟩
    suc (suc (1 + 4))
  ≡⟨⟩
    suc (suc (suc (0 + 4)))
  ≡⟨⟩
    suc (suc (suc 4))
  ≡⟨⟩
    suc (suc 5)
  ≡⟨⟩
    suc 6
  ≡⟨⟩
    7
  ∎

_*_ : ℕ -> ℕ -> ℕ
zero * n = zero
(suc m) * n = n + (m * n)

_ : 2 * 3 ≡ 6
_ =
  begin
    2 * 3
  ≡⟨⟩
    3 + (1 * 3)
  ≡⟨⟩
    3 + (3 + (0 * 3))
  ≡⟨⟩
    3 + (3 + 0)
  ≡⟨⟩
    3 + 3
  ≡⟨⟩
    6
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
    4 + (4 + (4 + 0))
  ≡⟨⟩
    12
  ∎

_^_ : ℕ -> ℕ -> ℕ
m ^ 0 = 1
m ^ (suc n) = m * (m ^ n)

_ : 2 ^ 3 ≡ 8
_ =
  begin
    2 ^ 3
  ≡⟨⟩
    2 * (2 ^ 2)
  ≡⟨⟩
    2 * (2 * (2 ^ 1))
  ≡⟨⟩
    2 * (2 * (2 * (2 ^ 0)))
  ≡⟨⟩
    8
  ∎

_∸_ : ℕ -> ℕ -> ℕ
zero ∸ n = zero
m ∸ zero = m
(suc m) ∸ (suc n) = m ∸ n

_ =
  begin
    3 ∸ 2
  ≡⟨⟩
    2 ∸ 1
  ≡⟨⟩
    1 ∸ 0
  ≡⟨⟩
    1
  ∎

∸_example1 =
  begin
    5 ∸ 3
  ≡⟨⟩
    4 ∸ 2
  ≡⟨⟩
    3 ∸ 1
  ≡⟨⟩
    2 ∸ 0
  ≡⟨⟩
    2
  ∎

∸_example2 =
 begin
   3 - 5
 ≡⟨⟩
   2 - 4
 ≡⟨⟩
   1 - 3
 ≡⟨⟩
   0 - 2
 ≡⟨⟩
   0
 ∎

infixl 6 _+_ _∸_
infixl 7 _*_

{-# BUILTIN NATPLUS _+_ #-}
{-# BUILTIN NATTIMES _*_ #-}
{-# BUILTIN NATMINUS _∸_ #-}

data Bin : Set where
  ⟨⟩ : Bin
  _O : Bin -> Bin
  _I : Bin -> Bin

inc : Bin -> Bin
inc ⟨⟩ = ⟨⟩ I
inc (x O) = x I
inc (x I) = (inc x) O

-- verify (inc 11) ≡ 12
_ =
  begin
    inc (⟨⟩ I O I I)
  ≡⟨⟩
    (inc (⟨⟩ I O I)) O
  ≡⟨⟩
    ((inc (⟨⟩ I O)) O) O
  ≡⟨⟩
    ((⟨⟩ I I) O) O
  ≡⟨⟩
    ⟨⟩ I I O O
  ∎

naturalToBinary : ℕ -> Bin
naturalToBinary zero = ⟨⟩ O
naturalToBinary (suc n) = inc (naturalToBinary n)

binaryToNatural : Bin -> ℕ
binaryToNatural ⟨⟩ = zero
binaryToNatural (x O) = 2 * (binaryToNatural x)
binaryToNatural (x I) = 1 + 2 * (binaryToNatural x)
