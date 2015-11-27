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

data ⊤ : Set where
  tt : ⊤

-- | Exercises
-- | How many elements are there in ⊤ × ⊤?
-- | There is only one element in ⊤ × ⊤ which is: tt , tt
-- | There is no element in the set ⊤ × ⊥. Since there is no value
-- | that is of type ⊥, we cannot construct a tuple that will be an
-- | element of the set ⊤ × ⊥. It is the same case with the sets ⊥ × ⊤
-- | and ⊥ × ⊥. Notice that this resembles the behavior of ∧.
-- | ⊤ is the neutral element of _×_.

-- | Disjoint union
data _⊎_ (A B : Set) : Set where
  inj₁ : A → A ⊎ B
  inj₂ : B → A ⊎ B

-- | Exercises
-- | 1) What are the elements of Bool ⊎ ⊤
-- |    Three elements: true, false, and tt,
-- |    which we define below.
x1 : Bool ⊎ ⊤
x1 = inj₁ true

x2 : Bool ⊎ ⊤
x2 = inj₁ false

x3 : Bool ⊎ ⊤
x3 = inj₂ tt

-- | 2) What are the elements of ⊤ ⊎ (⊤ ⊎ ⊤)
-- |    There are three elements in the set ⊤ ⊎ (⊤ ⊎ ⊤)
-- |    which are listed below.
y : ⊤ ⊎ (⊤ ⊎ ⊤)
y = inj₂ (inj₁ tt)

y2 : ⊤ ⊎ (⊤ ⊎ ⊤)
y2 = inj₂ (inj₁ tt)

y3 : ⊤ ⊎ (⊤ ⊎ ⊤)
y3 = inj₁ tt

-- | The ⊥ type would serve this purpose.



infixr 1 _⊎_
