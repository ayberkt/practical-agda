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

-- Exercise
-- Extremely simplified phrase-structure rules
-- for English, each POS containing 2-3 sample words.
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

-- All coyotes eat carrots.
utterance : S
utterance = S' (NP' all coyotes) (VP' eat (NP' ε carrots))

-- Some rabbits wash the carrots.
utterance-1 : S
utterance-1 = S' (NP' some rabbits) (VP' wash (NP' the carrots))

-- All coyotes kill some rabbits
utterance-2 : S
utterance-2 = S' (NP' all coyotes) (VP'  kill (NP' some rabbits))

utterance-3 : S
utterance-3 = S' (NP' all coyotes) (VP' eat (NP' ε carrots))
