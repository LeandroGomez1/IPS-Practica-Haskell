mTake :: (Eq t, Num t) => t -> [a] -> [a]
mTake _ [] = []
mTake 0 l = []
mTake n (x:xs) = x:mTake (n - 1) xs

--mMap :: p -> [a1] -> [a2]
--mMap f [] = []
--mMap f (x:xs) = (f x):mMap f xs

mdrop :: (Eq a1, Num a1) => a1 -> [a2] -> [a2]
mdrop _ [] = []
mdrop 0 l = l
mdrop n (x:t) = mdrop (n - 1) t

mMap2 :: (t -> a) -> [t] -> [a]
mMap2 f p = [f x | x <- p]

--mFilter :: p -> [a1] -> [a2]
--mFilter p [] = []
--mFilter p (x:t)
--    | p x = x:mFilter p t
--    | otherwise = mFilter p t

--mFilter p (x:t) = if p x then x:mFilter p t
--                else mFilter p t

mFilter2 :: (a -> Bool) -> [a] -> [a]
mFilter2 p lista = [x | x <- lista, p x]