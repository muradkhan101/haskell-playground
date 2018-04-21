import System.Environment
import System.IO
import System.IO.Error
import Control.Exception
import Control.Monad

main = toTry `catch` handler

toTry :: IO ()
toTry = do (filename:_) <- getArgs
           contents <- readFile filename
        --    putStrLn $ "This file has " ++ show (length (lines contents)) ++ " lines"
        --    mapM putStrLn (lines contents)
           sequence $ map putStrLn (lines contents)
           -- Need to end with empty IO action because of return type of function.
           return ()
           -- Can do this too putStrLn "whatever"

-- Catches everything
-- handler :: IOError -> IO ()
-- handler e = putStrLn "Something went horribly wrong!"

handler:: IOError -> IO ()
handler e
    -- | isDoesNotExistError e = putStrLn "File doesn't exist dummy"
    | isDoesNotExistError e =
        case ioeGetFileName e of
            Just path -> putStrLn $ "File doesn't exist at: " ++ path
            Nothing -> putStrLn $ "File doesn't exist and I dont know where you were looking!!!"
    | otherwise = ioError e