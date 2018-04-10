main = do
    sequenced <- sequence [getLine, getLine, getLine]
    print sequenced -- prints array of entered strings
    print $ map (++ " NO!") sequenced

    -- mapM print [1,2,3,4,5]
    -- is same as
    -- sequence $ map print [1,2,3,4,5]