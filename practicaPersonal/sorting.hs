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
quickSort1 :: Ord a => [a] -> [a]
quickSort1 [] = []
quickSort1 [a] = [a]
quickSort1 (x:xs) = menores ++ [x] ++ mayores
    where
        menores = [y | y <- x:xs, y <= x]
        mayores = [y | y <- x:xs, y > x]

---------------------------------------------------------------------
particion :: (Ord a) => a -> [a] -> ([a],[a])
particion p [] = ([], [])
particion p (x:xs)
    | x <= p = (x : l1, l2)
    | otherwise = (l1, x : l2)
    where
        (l1,l2) = particion p xs

quickSort2 :: (Ord a) => [a] -> [a]
quickSort2 [] = []
quickSort2 [a] = [a]
quickSort2 (x:xs) = quickSort2 y ++ [x] ++ quickSort2 ys
    where
        (y,ys) = particion x xs