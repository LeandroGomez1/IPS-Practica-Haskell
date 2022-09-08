--Minimo de una lista
minimo :: Ord a => [a] -> a
minimo [] = error "Lista vacia"
minimo [x] = x
minimo (x:y:t)
    | x < y = minimo (x:t)
    | otherwise = minimo (y:t)
