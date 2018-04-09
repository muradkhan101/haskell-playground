data Person = Person {
    firstName :: String,
    lastName :: String,
    age :: Int,
    height :: Float
} deriving (Show, Eq, Read) -- deriving == inherits 
-- bounded for min / max
-- Enum for ranges, pred, succ
-- Ord for <, > 

-- Set type synonyms
type Name = String
type Age = Int

data Person2 = Person2 {
    firstName :: Name,
    lastName :: Name,
    age :: Age
} deriving (Show, Eq, Read)