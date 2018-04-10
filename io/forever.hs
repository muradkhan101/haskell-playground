import Control.Monad
import Data.Char

main = forever $ do
    putStr "Input me: "
    line <- getLine
    putStrLn $ map toUpper line -- putStrLn like print but doesn't put quotes around string
