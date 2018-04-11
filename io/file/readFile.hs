import System.IO

main = do
    content <- readFile "lyrics.txt"
    putStrLn content