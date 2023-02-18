particion :: (Ord a) => a -> [a] -> ([a],[a])
particion _ [] = ([],[])
particion p (x:xs)
    | x <= p = (x:l1 , l2)
    | otherwise = (l1 , x:l2)
    where
        (l1,l2) = particion p xs

qSort :: Ord a => [a] -> [a]
qSort [] = []
qSort [x] = [x]
qSort (x:xs) = qSort y ++ [x] ++ qSort ys
    where
        (y,ys) = particion x xs