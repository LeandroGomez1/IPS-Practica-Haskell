mTake _ [] = []
mTake 0 l = []
mTake n (x:xs) = x:mTake (n - 1) xs
