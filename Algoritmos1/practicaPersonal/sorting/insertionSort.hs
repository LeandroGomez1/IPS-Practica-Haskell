
inserta :: (Ord a) => a -> [a] -> [a]
inserta p [] = [p]
inserta p (x:xs)
    | p > x = x : inserta p xs
    | otherwise = p : x : xs

iSort :: Ord a => [a] -> [a]
iSort [] = []
iSort [x] = [x]
iSort (x:xs) = inserta x (iSort xs)