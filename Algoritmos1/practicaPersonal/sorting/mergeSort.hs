split' :: [a] -> ([a],[a])
split' [] = ([],[])
split' [x] = ([x],[])
split' (x:xs:t) = (x:m, xs:n)
    where
        (m,n) = split' t

merge :: Ord a => [a] -> [a] -> [a]
merge [] [] = []
merge lista1 [] = lista1
merge [] lista2 = lista2
merge (x:xs) (y:ys)
    | x < y = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys

mSort :: Ord a => [a] -> [a]
mSort [] = []
mSort [x] = [x]
mSort lista = merge (mSort i) (mSort j)
    where
        (i,j) = split' lista