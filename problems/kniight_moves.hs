import Control.Monad
type KnightPos = (Int, Int)

moveKnight :: KnightPos -> [KnightPos]
moveKnight (x, y) = filter validPos
    [(x + 2, y + 1), (x - 2, y + 1), (x + 2, y - 1), (x - 2, y - 1),
     (x + 1, y + 2), (x - 1, y + 2), (x + 1, y - 2), (x - 1, y - 2)]
     where validPos (x1, y1) = x1 `elem` [1..8] && y1 `elem` [1..8]

move3 start = return start >>= moveKnight >>= moveKnight >>= moveKnight

possibleIn3 start end = end `elem` (move3 start)

type MoveHistory = [KnightPos]

moveWithHistory :: MoveHistory -> [MoveHistory]
moveWithHistory list@(last:_) = map (\move -> move:list) (moveKnight last)

move3WithHistory start = return [start] >>= moveWithHistory >>= moveWithHistory >>= moveWithHistory

possibleIn3WithHistory start end = filter (\moves -> end `elem` moves) (move3 start)

moveAnyWithHistory :: KnightPos -> Int -> [MoveHistory]
moveAnyWithHistory start num = return [start] >>= foldr (<=<) return (replicate num moveWithHistory)

possibleWithHistory :: KnightPos -> KnightPos -> Int -> [MoveHistory]
possibleWithHistory start end num = filter (\moves -> end `elem` moves) (moveAnyWithHistory start num)