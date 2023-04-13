maximo :: (Ord a) => [a] -> a
maximo [] = error "Lista vacia"
maximo [x] = x
maximo (x:xs)
    | x >= maximo xs = x
    | otherwise = maximo xs