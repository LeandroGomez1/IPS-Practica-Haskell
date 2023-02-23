concatenar :: [a] -> [a] -> [a]
concatenar [] l = l
concatenar l [] = l
concatenar (x:xs) (y:ys) = x : concatenar xs (y:ys) 