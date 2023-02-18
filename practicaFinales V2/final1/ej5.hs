inserta :: (Ord a) => a -> [a] -> [a]
inserta n [] = [n]
inserta n (x:xs)
    | n <= x = n : (x:xs)
    | otherwise = x : inserta n xs