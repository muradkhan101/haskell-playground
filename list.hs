listDouble :: (Num a) => [a] -> [a]
listDouble y = [ 2 * x | x <- y ]

listLength :: (Num b) => [a] -> b
listLength [] = 0
listLength (x:[]) = 1
listLength (_:_:[]) = 2
listLength (_:_:_:xs) = listLength xs + 3

l = [ x * 2 | x <- [5, 10..999], mod x 4 /= 0 ]

headAndTail :: [a] -> (a, [a])
headAndTail list = (head list, tail list)

headAndTail' :: [a] -> (a, [a])
headAndTail' all@(x:list) = (x, tail all)
headAndTail' [] = error "Empty List"
