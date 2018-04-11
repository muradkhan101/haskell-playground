import Data.Char

main = do
    content <- getContents
    putStr (map toUpper content)

-- main  = interact $ unlines . filter ((<10)  . length) . lines