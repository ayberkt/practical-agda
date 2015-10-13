module EnumeratedSets where
open import Data.Nat using (ℕ; _+_)
open import IO 

-- | Bool is a Set
-- | true is a Bool
-- | false is a Bool
-- | there is nothing else which is Bool
-- | true and false are different
data Bool : Set where
  true  : Bool
  false : Bool

data Answer : Set where
  yes   : Answer
  no    : Answer
  maybe : Answer

data Quarter : Set where
  east  : Quarter
  west  : Quarter
  north : Quarter
  south : Quarter
