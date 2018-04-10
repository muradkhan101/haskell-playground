import Control.Monad

main = do
    c <- getChar
    --- when is like an if / else, returns () empty IO if false
    when ( c /= ' ') $ do
        putChar c
        main