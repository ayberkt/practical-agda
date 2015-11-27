module Sets.Indexed where

open import Data.Empty using (⊥)
open import Data.Unit using (⊤; tt)
open import Data.Sum using (_⊎_; inj₁; inj₂)
open import Data.Bool using (Bool; true; false)
open import Data.Nat using (ℕ; suc; pred)

-- | Fin is a set indexed with a natural number
--   Fin 1 has only a single element: zero 0
--   Fin 2 has two elements: zero 1 and suc 1 (zero 0)
--   Fin 3 has three elements:
--     zero 2, suc 2 (zero 1), suc 1 (suc 1 (zero 0))
--   ... Fin n has n elements.
data Fin : ℕ → Set where
  zero : (n : ℕ) → Fin (suc n)
  suc  : (n : ℕ) → Fin n → Fin (suc n)

x₁ : Fin 3
x₁ = zero 2

x₂ : Fin 3
x₂ = suc 2 (zero 1)

x₃ : Fin 3
x₃ = suc 2 (suc 1 (zero 0))

-- | Exercise (1)
--     Define a Bool-indexed family of sets such that the set indexed by false
--     contains no elements and the set indexed by true contains one element.
data Foo : Bool → Set where
  true′  : Foo true

-- | It is obvious that the set `Foo false` does not have a contructor.
--   So it has zero elements. The set `Foo true` on the other hand
--   has a single element, namely `true′`, which we exemplify below.
p₂ : Foo true
p₂ = true′

-- | Exercise (2)
--     Define a ℕ-indexed family of sets such that the sets indexed by
--     even numbers contain one element and the others are empty!
data Bar : ℕ → Set where
  zero  : Bar 0
  even  : (n : ℕ) → Bar (pred (pred n)) → Bar n

y₁ : Bar 2
y₁ = even 2 zero

y₂ : Bar 4
y₂ = even 4 (even 2 zero)
