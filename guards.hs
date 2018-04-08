respondToMessage :: String -> String
respondToMessage msg
    | msg == "Hi" = "Hey"
    | msg == "How are you" = "Good"
    | otherwise = "What do you mean"

checkSquare :: (Ord a, Num a) => a -> String
checkSquare x
    | sqr < 10 = "Small"
    | sqr < 100 = "Medium"
    | sqr < 1000 = "Big"
    | sqr < 10000 = "Gigantic"
    | otherwise = "Ginormous"
    where sqr = x * x