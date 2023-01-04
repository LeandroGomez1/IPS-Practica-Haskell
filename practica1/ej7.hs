prodEscalar :: [Int] -> [Int] -> Int
prodEscalar [] _ = 0
prodEscalar _ [] = 0
prodEscalar (x:xs) (y:ys) = x*y + prodEscalar xs ys

-- prodEscalar :: [Int] -> [Int] -> Int
-- prodEscalar [] _ = 0
-- prodEscalar _ [] = 0
-- prodEscalar (x:xs) (y:ys) = [z | z <- zip (x:xs) (y:ys), z == x * y] + prodEscalar xs ys
