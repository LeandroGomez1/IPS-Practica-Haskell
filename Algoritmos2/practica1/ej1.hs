borrarUltimo :: [a] -> [a]
borrarUltimo [] = []
borrarUltimo [x,y] = [x]
borrarUltimo (x:xs) = x : borrarUltimo xs

--collect

serie :: [a] -> [[a]]
serie [] = []
serie [x] = [[x]]
serie (x:xs) = [] : serie (borrarUltimo (x:xs)) ++ [x:xs]