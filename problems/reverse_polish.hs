import Data.List

reversePolish :: String -> Float
reversePolish = head . foldl foldFn [] . words
    where foldFn (x1:x2:list) "+" = (x1 + x2):list
          foldFn (x1:x2:list) "-" = (x2 - x1):list
          foldFn (x1:x2:list) "*" = (x1 * x2):list
          foldFn (x1:x2:list) "/" = (x2 / x1):list
          foldFn (x1:x2:list) "^" = (x2 ** x1):list
          foldFn (x:list) "log" = log x:list
          foldFn xs "sum" = [sum xs]
          foldFn stack item = read item:stack

isOperator :: Char -> Bool
isOperator op
    | op == '+' = True
    | op == '-' = True
    | op == '*' = True
    | op == '/' = True
    | otherwise = False