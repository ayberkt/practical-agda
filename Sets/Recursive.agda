module Sets.Recursive where

open import Sets.Enumerated using (Bool; true; false)

data ℕ : Set where
  zero : ℕ
  suc  : ℕ → ℕ

-- | Exercise
data ℤ : Set where
  zero : ℤ
  suc  : ℤ → ℤ
  pred : ℤ → ℤ
-- | Exercise

data Tree : Set where
  emptyTree : Tree
  node      : Tree → Tree → Tree

-- | Exercise
tree-1 : Tree
tree-1 = node emptyTree emptyTree

tree-2 : Tree
tree-2 = node tree-1 tree-1

tree-3 : Tree
tree-3 = node tree-2 tree-2

tree-4 : Tree
tree-4 = node (node (node tree-1 emptyTree)
                    emptyTree)
              emptyTree
-- | Exercise
-- Binary trees with natural numbers attached to to the leafs
data TreeℕLeaves : Set where
  leaf : ℕ → TreeℕLeaves
  node : TreeℕLeaves → TreeℕLeaves  → TreeℕLeaves


-- | Declare a few natural numbers for convenience
one : ℕ
one = suc zero

two : ℕ
two = suc one

three : ℕ
three = suc two

sample : TreeℕLeaves
sample = node (leaf one) (leaf zero)

data TreeWℕNodes : Set where
  leaf' : TreeWℕNodes
  node' : ℕ → TreeWℕNodes → TreeWℕNodes → TreeWℕNodes

sample' : TreeWℕNodes
sample' = node' one leaf' leaf'

data List : Set where
  ε   : List
  elem : ℕ → List → List

sample-list : List
sample-list = (elem one (elem two (elem three ε)))

data NonEmptyList : Set where
  last            : ℕ → NonEmptyList
  elem'           : ℕ → NonEmptyList → NonEmptyList

sample-list' : NonEmptyList
sample-list' = (elem' one (elem' two (last three)))
