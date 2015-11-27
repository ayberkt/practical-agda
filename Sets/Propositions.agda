module Sets.Propositions where

open import Data.Nat using (ℕ; zero; suc)

-- The proof of truth is trivial. It can always be proven.
data ⊤ : Set where
  tt : ⊤

-- There no proof for falsehood. It cannot be proven.
data ⊥ : Set where

-- The proof of A ∧ B is a tuple containing a proof of A and a proof
-- of B.
data _×_ (A B : Set) : Set where
  _,_ : A → B → A × B

-- The proof for A ∨ B is a A ⊎ B. There are two constructors for
-- A ⊎ B; inj₁ and inj₂, for A being true and B being true respectively.
data _⊎_ (A : Set) (B : Set) : Set where
  inj₁ : A → A ⊎ B
  inj₂ : B → A ⊎ B

infixr 1 _⊎_

-- | Exercises
--     Construct one proof for each proposition if possible
j₁ : ⊤ × ⊤
j₁ = tt , tt

-- ⊤ × ⊥ cannot be proven.

-- ⊥ × ⊥ cannot be proven.

j₂ : ⊤ ⊎ ⊤
j₂ = inj₁ tt

j₃ : ⊤ ⊎ ⊤
j₃ = inj₂ tt

j₄ : ⊤ ⊎ ⊥
j₄ = inj₁ tt

-- ⊥ ⊎ ⊥ cannot be proven.

j₅ : ⊥ ⊎ ⊤ ⊎ ⊤ × (⊥ ⊎ ⊥) ⊎ ⊤
j₅ = inj₂ (inj₁ tt)

data _≤_ : ℕ → ℕ → Set where
  z≤n : {n : ℕ} → zero ≤ n
  s≤s : {m : ℕ} → {n : ℕ} → m ≤ n → suc m ≤ suc n

infix 4 _≤_

0≤1 : 0 ≤ 1
0≤1 = z≤n

1≤2 : 1 ≤ 2
1≤2 = s≤s (z≤n)

-- | Exercise
--    Prove that 3 ≤ 7
3≤7 : 3 ≤ 7
3≤7 = s≤s (s≤s (s≤s (z≤n)))
