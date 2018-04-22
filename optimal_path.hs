data Section = Section {
    a :: Int,
    b :: Int,
    c :: Int
} deriving (Show)
type RoadSystem = [Section]

data Label = A | B | C deriving (Show)
type Path = [(Label, Int)]

heathrowToLondon = [Section 50 10 30, Section 5 90 20, Section 40 2 25, Section 10 8 0]  

step :: (Path, Path) -> Section -> (Path, Path)
step (pathA, pathB) (Section a b c) =
    let priceA = sum $ map snd pathA
        priceB = sum $ map snd pathB
        straightCostA = priceA + a
        crossCostA = priceB + b + c
        straightCostB = priceB + b
        crossCostB = priceA + a + c
        newPathA = if straightCostA <= crossCostA
            then (A, a):pathA
            else (C, c):(B, b):pathA
        newPathB = if straightCostB <= crossCostB
            then (B, b):pathB
            else (C, c):(A, a):pathB
    in (newPathA, newPathB)

optimalPath :: RoadSystem -> Path
optimalPath sectionList = 
    let optimalPaths = foldl step ([], []) sectionList
        totalOne = sum $ map snd (fst optimalPaths)
        totalTwo = sum $ map snd (snd optimalPaths)
    in reverse $ if totalOne >= totalTwo
        then snd optimalPaths
        else fst optimalPaths

