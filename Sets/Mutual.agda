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
-- Extremely simplified phrase-structure rules
-- for English, with limited vocabulary.
-- This can generate sentences like
--   "all coyotes eat carrots"
--   "some rabbits wash the carrots"
data Det : Set where
  the  : Det
  all  : Det
  some : Det
  ε    : Det

data N : Set where
  coyotes : N
  rabbits : N
  carrots : N

data V : Set where
  eat  : V
  kill : V
  wash : V

data NP : Set where
  NP' : Det → N → NP

data VP : Set where
  VP'  : V → NP → VP
  VP'' : V → NP → NP → VP

data S : Set where
  S' : NP → VP → S

utterance : S
utterance = S' (NP' all coyotes) (VP' eat (NP' ε carrots))

utterance-1 : S
utterance-1 = S' (NP' some rabbits) (VP' wash (NP' the carrots))
