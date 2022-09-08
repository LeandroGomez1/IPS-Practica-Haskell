--Concatenar dos listas
concatenar :: [a] -> [a] -> [a]
concatenar [] l = l
concatenar l [] = l
concatenar (x:t) l = x : concatenar t l

