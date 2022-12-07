elim :: Eq a => a -> [a] -> [a]
elim min [] = []
elim min lista = [x | x <- lista, x /= min]


eligeMenor :: Ord a => [a] -> a
eligeMenor [] = error "Lista Vacia"
eligeMenor [a] = a
eligeMenor (x:xs)
    | x < eligeMenor xs = x
    | otherwise = eligeMenor xs

selecSort :: Ord a => [a] -> [a]
selecSort [] = []
selecSort [a] = [a]
selecSort lista = menor : selecSort lista'
    where
        menor = eligeMenor lista
        lista' = elim menor lista

---------------------------------------------------------------------
insert :: Ord a => a -> [a] -> [a]
insert x [] = [x]
insert x (y:ys)
    | x < y = x:y:ys
    | otherwise = y : insert x ys

insertSort :: Ord a => [a] -> [a]
insertSort [] = []
insertSort [a] = [a]
insertSort (x:xs) = insert x (insertSort xs)

---------------------------------------------------------------------
quickSort :: Ord a => [a] -> [a]
quickSort [] = []
quickSort [a] = [a]
quickSort (x:xs) = menores ++ [x] ++ mayores
    where
        menores = [y | y <- x:xs, y <= x]
        mayores = [y | y <- x:xs, y > x]