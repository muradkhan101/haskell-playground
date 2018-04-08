squaresUnder10K = takeWhile (< 10000) . filter odd . map (^2) $ [1..]

-- oddSquaresUnderLimit :: (Num a, Ord a) => a -> ( [a] -> [a] )
oddSquaresUnderLimit x = takeWhile (< x) . filter odd . map (^2)