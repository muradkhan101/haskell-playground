quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (pivot:list) = 
    let smaller = quicksort [ x | x <- list, x < pivot ]
        bigger = quicksort [ x | x <- list, x >= pivot ]
    in smaller ++ [pivot] ++ bigger

fibonacci :: Int -> Int
fibonacci n
    | n == 0 = 1 
    | n == 1 = 1
    | otherwise = fibonacci (n - 1) + fibonacci (n - 2) 

unique :: [a] -> [a]
unique [] = []
unique (head:list)
    | (head `elem` list) = unique list
    | otherwise = head:unique list

takeWhile' test (head:list)
    | test head = head:takeWhile' test head
    otherwise 