mZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
mZipWith _ l1 [] = []
mZipWith _ [] l2  = []
mZipWith f (x:xs) (y:ys) = f x y : mZipWith f xs ys