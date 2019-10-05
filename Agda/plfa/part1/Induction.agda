module plfa.part1.Induction where

import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl; cong; sym)
open Eq.≡-Reasoning using (begin_; _≡⟨⟩_; _≡⟨_⟩_; _∎)
open import Data.Nat using (ℕ; zero; suc; _+_; _*_; _∸_)

_ : (3 + 4) + 5 ≡ 3 + (4 + 5)
_ =
    begin
    (3 + 4) + 5
    ≡⟨⟩
    7 + 5
    ≡⟨⟩
    12
    ≡⟨⟩
    3 + 9
    ≡⟨⟩
    3 + (4 + 5)
    ∎

+-assoc : ∀ (m n p : ℕ) → (m + n) + p ≡ m + (n + p)
+-assoc zero n p =
    begin
    (zero + n) + p
    ≡⟨⟩
    n + p
    ≡⟨⟩
    zero + (n + p)
    ∎
+-assoc (suc m) n p =
    begin
    (suc m + n) + p
    ≡⟨⟩
    suc (m + n) + p
    ≡⟨⟩
    suc (m + n + p)
    ≡⟨ cong suc (+-assoc m n p) ⟩
    suc (m + (n + p))
    ≡⟨⟩
    suc m + (n + p)
    ∎

+-identityʳ : ∀ (m : ℕ) → m + zero ≡ m
+-identityʳ zero =
    begin
    zero + zero
    ≡⟨⟩
    zero
    ∎
+-identityʳ (suc m) =
    begin
    suc m + zero
    ≡⟨⟩
    suc (m + zero)
    ≡⟨ cong suc (+-identityʳ m) ⟩
    suc m
    ∎

+-suc : ∀ (m n : ℕ) → m + suc n ≡ suc (m + n)
+-suc zero n =
    begin
    zero + suc n
    ≡⟨⟩
    suc n
    ≡⟨⟩
    suc (zero + n)
    ∎
+-suc (suc m) n =
    begin
    (suc m) + suc n
    ≡⟨⟩
    suc (m + suc n)
    ≡⟨ cong suc (+-suc m n) ⟩
    suc (suc m + n)
    ∎

+-comm : ∀ (m n : ℕ) → m + n ≡ n + m
+-comm m zero =
    begin
    m + zero
    ≡⟨ +-identityʳ m ⟩
    m
    ≡⟨⟩
    zero + m
    ∎
+-comm m (suc n) =
    begin
    m + (suc n)
    ≡⟨ +-suc m n ⟩
    suc (m + n)
    ≡⟨ cong suc (+-comm m n) ⟩
    suc (n + m)
    ≡⟨⟩
    suc n + m
    ∎
