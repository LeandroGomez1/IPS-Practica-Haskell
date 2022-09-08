-------------------------------
--Selection Sort

delete :: Eq a => a -> [a] -> [a]
delete y [] = []
delete y l = [x |x<-l,x /= y]

minimo :: Ord a => [a] -> a
minimo [x] = x
minimo (x:y:t)
    | x < y = minimo (x:t)
    | otherwise = minimo (y:t)

ssort :: Ord a => [a] -> [a]
ssort [] = []
ssort [x] = [x]
ssort l = m:ssort l'
            where
                m = minimo l
                l' = delete m l

-------------------------------
-- insertion sort
insert :: Ord t => t -> [t] -> [t]
insert x [] = [x]
insert x (y:t)
    | x < y = x:y:t
    | otherwise = y: insert x t
isort :: Ord t => [t] -> [t]
isort [] = []
isort [x] = [x]
isort (x:t) = insert x (isort t)

-------------------------------
-- Quick sort
--qsort [] = []
--qsort [x] = [x]
--qsort (x:t) = qsort