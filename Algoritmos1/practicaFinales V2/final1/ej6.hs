split1 :: (Ord a) => a -> [a] -> ([a],[a])
split1 x l = ([y | y <- l, y <= x] , [y | y <- l, y > x])

split2 :: (Ord a) => [a] -> ([a],[a])
split2 [] = ([],[])
split2 [x] = ([x],[])
split2 (x:xs:t) = (x:menores , xs:mayores)
    where
        (menores,mayores) = split2 t