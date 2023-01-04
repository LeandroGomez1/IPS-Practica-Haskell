esBisiesto :: Int -> Bool
esBisiesto año
    | año `mod` 4 == 0 = True
    | otherwise = False