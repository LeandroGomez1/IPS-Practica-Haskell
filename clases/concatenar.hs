--Concatenar dos listas
concatenar [] l = l
concatenar l [] = l
concatenar (x:t) l = x : concatenar t l

