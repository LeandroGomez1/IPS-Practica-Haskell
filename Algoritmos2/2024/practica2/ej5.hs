data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving Show

{- Dado un valor x de tipo a y un entero d, crea un arbol
binario completo de altura d con el valor x en cada nodo. -}

completo :: a -> Int -> Tree a
completo x 0 = EmptyTree
completo x d = Node x (completo x (d-1)) (completo x (d-1))

completo' :: a -> Int -> Tree a
completo' x 0 = EmptyTree
completo' x d =
    let l = completo' x (d-1)
    in Node x l l

balanceado :: a -> Int -> Tree a
balanceado x 0 = EmptyTree
balanceado x 1 = Node x EmptyTree EmptyTree
balanceado x n
    | even (n-1) =
        let l = balanceado x (div (n-1) 2)
        in Node x l l
--    | otherwise = Node x (balanceado x (div (n-1) 2)) (balanceado x (div (n-1) 2+1))
    | otherwise =
        let (l,r) = balanceado2 x m
            m = div (n-1) 2
        in Node x l r

balanceado2 :: a -> Int -> (Tree a, Tree a)
balanceado2 x m = (balanceado x m, balanceado x (m+1))