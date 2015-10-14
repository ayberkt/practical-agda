module Sets.Mutual where

open import Sets.Enumerated using (Bool; true; false)
open import Data.Nat public using (ℕ; zero; suc)

data ℒ : Set
data ℳ : Set

data ℒ where
  ε    : ℒ
  _::_ : ℕ → ℳ → ℒ

data ℳ where
  _::_ : Bool → ℒ → ℳ

-- | # Exercise
-- | Elements of ℒ are either ε or a '::' type consisting
-- | of a some x : ℕ and some y : ℳ.
-- | An element of ℳ is a type _::_ consisting of a bool and
-- | some x : ℒ.

-- Exercise TODO: Define a small grammar.
