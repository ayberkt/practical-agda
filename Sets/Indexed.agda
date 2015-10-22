module Sets.Indexed where

open import Data.Empty using (⊥)
open import Data.Unit using (⊤; tt)
open import Data.Sum using (_⊎_; inj₁; inj₂)
open import Data.Bool using (Bool; true; false)
open import Data.Nat using (ℕ; suc)

-- | Fin is a set indexed with a natural number
-- | Fin 1 has only a single element: zero 0
-- | Fin 2 has two elements: zero 1 and suc 1 (zero 0)
-- | Fin 3 has three elements:
-- |   zero 2, suc 2 (zero 1), suc 1 (suc 1 (zero 0))
-- | ... Fin n has n elements.
data Fin : ℕ → Set where
  zero : (n : ℕ) → Fin (suc n)
  suc  : (n : ℕ) → Fin n → Fin (suc n)

x₁ : Fin 3
x₁ = zero 2

x₂ : Fin 3
x₂ = suc 2 (zero 1)

x₃ : Fin 3
x₃ = suc 2 (suc 1 (zero 0))
