import System.IO

-- Prints ALL the lines
main = do
    handle <- openFile "lyrics.txt" ReadMode
    lines <- hGetContents handle
    putStr lines
    hClose handle