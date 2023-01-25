particion :: (Ord a) => a -> [a] -> ([a],[a])
particion pivot [] = ([], [])
particion pivot (x:xs)
    | x <= pivot = (x : l1, l2)
    | otherwise = (l1, x : l2)
    where
        (l1,l2) = particion pivot xs 

qSort :: (Ord a) => [a] -> [a]
qSort [] = []
qSort [a] = [a]
qSort (x:xs) = qSort y ++ [x] ++ qSort ys
    where
        (y,ys) = particion x xs
