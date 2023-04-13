mTake :: Int -> [a] -> [a]
mTake _ [] = []
mTake n (x:xs)
    | n <= 0 = []
    | otherwise = x : mTake (n-1) xs