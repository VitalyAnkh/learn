module Sets.Recursive where
open import Sets.Enumerated using (Bool; true; false)

data ℕ : Set where
  zero : ℕ
  suc : ℕ → ℕ
data ℕ⁺ : Set where
  one : ℕ⁺
  double : ℕ⁺ → ℕ⁺
  double+1 : ℕ⁺ → ℕ⁺
data ℕ₂ : Set where
  zero : ℕ₂
  id : ℕ⁺ → ℕ₂

data BinTree : Set where
  leaf : BinTree
  node : BinTree → BinTree → BinTree

-- 𝒜 ℬ 𝒞 𝒟 ℰ ℱ 𝒢 ℋ ℐ 𝒥 𝒦 ℒ ℳ 𝒩 𝒪 𝒫 𝒬 ℛ 𝒮 𝒯 𝒰 𝒱 𝒲 𝒳 𝒴 𝒵
--   ¡ ̈ ♯ ⅋ ⋆ ­ ‌∅  ⟨ ̄ ̨ ̌ × ∣ ‼ ⁉ “ Ä Ë Ḧ Á ∫∫ ∟ ̸ ≮ ∰ ⁗ ◀ ∩ \
