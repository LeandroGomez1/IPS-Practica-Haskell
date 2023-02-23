sumador :: [Int] -> Int
sumador [] = 0
sumador (x:xs) = x + sumador xs