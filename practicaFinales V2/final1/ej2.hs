juntar :: (Ord a) => [a] -> [a] -> [a]
juntar [] lista2 = lista2
juntar lista1 [] = lista1
juntar (x:xs) (y:ys)
    | x < y = x : juntar xs (y:ys)
    | otherwise = y : juntar (x:xs) ys