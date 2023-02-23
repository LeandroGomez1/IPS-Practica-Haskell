mFilter :: (a -> Bool) -> [a] -> [a]
mFilter p [] = []
mFilter p (x:t)
    | p x = x:mFilter p t
    | otherwise = mFilter p t

mFilter2 :: (a -> Bool) -> [a] -> [a]
mFilter2 p lista = [x | x <- lista, p x]