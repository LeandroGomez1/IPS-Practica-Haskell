elem' :: (Eq a) => a -> [a] -> Bool
elem' _ [] = False
elem' n (x:xs)
    | x == n = True
    | otherwise = elem' n xs

nub :: (Eq a) => [a] -> [a]
nub [] = []
nub [x] = [x]
nub (x:xs)
    | elem' x (x:xs) = nub xs
    | otherwise = x : nub xs

isAsc :: [Int] -> Bool
isAsc [] = False
isAsc [x] = True
isAsc (x:t:xs)
    | x > t = False
    | otherwise = isAsc (t:xs)