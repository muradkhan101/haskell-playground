import System.IO

-- Only prints the one line
main = do
    withFile "lyrics.txt" ReadMode (\handle -> do
        line <- hGetLine handle
        putStrLn line)

