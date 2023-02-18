tomaMenor :: Ord a => [a] -> a
tomaMenor [] = error "Lista vacia"
tomaMenor [x] = x
tomaMenor (x:xs:t)
    | x > xs = tomaMenor (xs:t)
    | otherwise = tomaMenor (x:t)

elimMenor :: Eq a => a -> [a] -> [a]
elimMenor y lista = [x | x <- lista, x /= y]

sSort :: Ord a => [a] -> [a]
sSort [] = []
sSort [x] = [x]
sSort lista = menor : sSort lista'
    where
        menor = tomaMenor lista
        lista' = elimMenor menor lista