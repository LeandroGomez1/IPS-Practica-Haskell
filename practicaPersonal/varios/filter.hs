mFilter ::  (a -> Bool) -> [a] -> [a]
mFilter _ [] = []
mFilter f (x:xs)
    | f x = x : mFilter f xs
    | otherwise = mFilter f xs
    