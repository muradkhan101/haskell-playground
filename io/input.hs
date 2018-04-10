main = do
    putStrLn "Hey, whats ya name?"
    name <- getLine
    putStrLn $ "Hey, " ++ name ++ " ya awsum! :)"