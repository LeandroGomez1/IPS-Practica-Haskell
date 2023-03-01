mTakeWhile :: (a -> Bool) -> [a] -> [a]
mTakeWhile _ [] = []
mTakeWhile p (x:xs)
    | p x = x : mTakeWhile p xs
    | otherwise = []