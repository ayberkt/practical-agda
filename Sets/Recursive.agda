module Sets.Recursive where

open import Sets.Enumerated using (Bool; true; false)

data ℕ : Set where
  zero : ℕ
  suc  : ℕ → ℕ

one : ℕ
one = (suc zero)

two : ℕ
two = (suc (suc zero))


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

sample : TreeℕLeaves
sample = node (leaf (suc zero)) (leaf (suc zero))

data TreeWℕNodes : Set where
  leaf' : TreeWℕNodes
  node' : ℕ → TreeWℕNodes → TreeWℕNodes → TreeWℕNodes

sample' : TreeWℕNodes
sample' = node' (suc zero) leaf' leaf'

