module Term_Inference where

open import Data.Empty using (⊥)
open import Data.Unit  using (⊤; tt)
open import Data.Sum   using (_⊎_; inj₁; inj₂)
open import Data.Nat   using (ℕ; zero; suc)
open import Sets.Indexed using (Fin)

data Fin′ : ℕ → Set where
  zero : (n : _) → Fin′ (suc n)
  suc  : (n : _) → Fin′ n → Fin′ (suc n)

x : Fin′ 3
x = suc _ (zero _) -- 2 and 1 are inferred.

data T : ℕ → ℕ → ℕ → Set where
  c : {n m k : _} → T (suc n) (suc m) (suc k)

xt : T 1 2 3
xt = c
