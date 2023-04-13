juntar :: (Ord a) => [a] -> [a] -> [a]
juntar [] x = x
juntar x [] = x
juntar (x:xs) (y:ys)
    | x < y = x : juntar xs (y:ys)
    | otherwise = y : juntar (x:xs) ys