{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Move guards forward" #-}
divisors :: Int -> [Int]
divisors num
    | num < 0 = []
    | otherwise = [x | x <- [1..num], num `mod` x == 0]

matches :: Int -> [Int] -> [Int]
matches _ [] = []
matches num lista = [x | x <- lista, x == num]

-- isUnique :: Int -> [Int] -> Bool
-- isUnique _ [] = True
-- isUnique num (x:xs)
--     | num == x = False
--     | otherwise = isUnique x xs

-- unique :: [Int] -> [Int]
-- unique [] = []
-- unique [x] = [x]
-- unique (x:xs) = [y | y <- x:xs, y /= unique xs]

cuadrupla :: Int -> Int -> Int -> Int -> [(Int, Int, Int, Int)]
cuadrupla a b c d = [ (a,b,c,d) | a > 0 && a <= 100, b > 0 && b <= 100, c > 0 && c <= 100, d > 0 && d <= 100, a^2 + b^2 == c^2 + d^2]