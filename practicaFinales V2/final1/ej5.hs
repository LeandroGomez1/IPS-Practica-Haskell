inserta :: (Ord a) => a -> [a] -> [a]
inserta _ [] = []
inserta n (x:xs)
    | n <= x = n : (x:xs)
    | otherwise = inserta n xs