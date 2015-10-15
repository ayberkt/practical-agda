module Sets.Parametric where

open import Data.Nat
open import Data.Bool

data List (A : Set) : Set where
  [] : List A
  _::_ : A → List A → List A

infixr 5 _::_

{- Cartesian product -}
data _×_ (A B : Set) : Set where
  _,_ : A → B → A × B

infixr 4 _,_
infixr 2 _×_

pair-1 : Bool × Bool
pair-1 = true , true

pair-2 : ℕ × ℕ
pair-2 = (suc zero) , zero

-- | Exercises
-- | How many elements are there in ⊤ × ⊤?
-- | There is only one element in ⊤ × ⊤ which is: tt , tt
-- | There is no element in the set ⊤ × ⊥. Since there is no value
-- | that is of type ⊥, we cannot construct a tuple that will be an
-- | element of the set ⊤ × ⊥. It is the same case with the sets ⊥ × ⊤
-- | and ⊥ × ⊥. Notice that this resembles the behavior of ∧.
-- | ⊤ is the neutral element of _×_.

