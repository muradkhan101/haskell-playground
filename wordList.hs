import System.Environment

readLines :: FilePath -> IO [String]
readLines = fmap lines . readFile 

listTo1K = map show [100, 101..999]

main = do
    args <- getArgs
    listOne <- readLines $ args !! 0
    listTwo <- readLines $ args !! 1
    mapM putStrLn [x ++ y ++ z | x <- listOne, y <- listTwo, z <- listTo1K ]