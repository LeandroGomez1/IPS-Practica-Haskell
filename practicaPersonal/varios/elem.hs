mElem :: Eq a => a -> [a] -> Bool
mElem _ [] = False
mElem n (x:xs)
    | n == x = True
    | otherwise = mElem n xs