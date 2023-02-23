minimo :: Ord a => [a] -> a
minimo [] = error "No se ha podido encontrar el minimo"
minimo [x] = x
minimo (x:xs)
    | x <= minimo xs = x
    | otherwise = minimo xs