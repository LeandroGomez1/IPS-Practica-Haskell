mDrop :: Int -> [a] -> [a]
mDrop _ [] = []
mDrop n (x:xs)
    | n < 0 = []
    | n == 0 = x:xs
    | otherwise = mDrop (n - 1) xs