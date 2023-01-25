miZip :: [a] -> [b] -> [(a,b)]
miZip [] _ = []
miZip _ [] = []
miZip (x:xs) (y:ys) = (x,y) : miZip xs ys

prodEscalar :: [Int] -> [Int] -> Int
prodEscalar [] [] = 0
prodEscalar [] _ = 0
prodEscalar _ [] = 0
prodEscalar (x:xs) (y:ys) = sum [x*y | (x,y) <- miZip xs ys]

indexado :: [a] -> [(a,Int)]
indexado [] = []
indexado lista = miZip lista [1..]