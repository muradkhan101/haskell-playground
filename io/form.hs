import Control.Monad

-- main = do 
--     colors <- forM [1,2,3,4] (\x -> do
--         putStrLn $ "Rank the number " ++ show x
--         getLine)
--     putStrLn "You ranked the numbers 1, 2, 3, and 4 as: "
--     mapM putStrLn colors

-- Same thing but params flipped

main = do
    ranks <- mapM (\a -> do
        putStrLn $ "Rank the nummm: " ++ show a
        getLine) [1,2,3]
    putStrLn "U rank it lyk: "
    mapM putStrLn ranks