mDrop :: Int -> [a] -> [a]
mDrop _ [] = []
mDrop n (x:xs)
    | n <= 0 = []
    | p == n = x : mDrop p xs
    | otherwise = mDrop (p + 1) xs
    where
        p = 0