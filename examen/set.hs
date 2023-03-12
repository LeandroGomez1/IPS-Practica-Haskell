module Set (Set,  emptySet, setEmpty, inSet, addSet, delSet) where

    newtype Set a = Set [a] deriving Show

    emptySet :: Set a
    emptySet = Set []

    setEmpty :: Set a -> Bool
    setEmpty (Set []) = True
    setEmpty _ = False

    inSet :: (Eq a) => a -> Set a -> Bool
    inSet _ (Set []) = False
    inSet x (Set (y:ys))
        | x == y = True
        | otherwise = inSet x (Set ys)

    addSet :: (Eq a) => a -> Set a -> Set a
    addSet x (Set xs)
        | inSet x (Set xs) = Set xs
        | otherwise = Set (x:xs)

    delSet :: (Eq a) => a -> Set a -> Set a
    delSet x (Set []) = Set []
    delSet x (Set (y:ys))
        | x /= y = addSet y (delSet x (Set ys))
        | otherwise = delSet x (Set ys)

    unionSet :: (Eq a) => Set a -> Set a -> Set a
    unionSet l (Set []) = l
    unionSet (Set []) l = l
    unionSet (Set (x:xs)) (Set ys)
        | inSet x (Set ys) = unionSet (Set xs) (Set ys)
        | otherwise = unionSet (Set xs) (addSet x (Set ys))