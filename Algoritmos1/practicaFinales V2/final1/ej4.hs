miZip :: [a] -> [b] -> [(a,b)]
miZip [] lista2 = []
miZip lista1 [] = []
miZip (x:xs) (y:ys) = (x,y) : miZip xs ys

prodEscalar :: [Int] -> [Int] -> Int
prodEscalar [] _ = 0
prodEscalar _ [] = 0
prodEscalar (x:xs) (y:ys) = sum [a*b | (a,b) <- miZip (x:xs) (y:ys)]

indexado :: [a] -> [(a,Int)]
indexado [] = []
indexado lista = miZip lista [1..]