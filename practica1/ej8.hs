{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Move guards forward" #-}
divisors :: Int -> [Int]
divisors x
        | x <= 0 = []
        | otherwise = [y | y <- [1..x], mod x y == 0]

matches :: Int -> [Int] -> [Int]
matches _ [] = []
matches x lista = [y | y <- lista, y == x]


{-unique :: [Int] -> [Int]
unique [] = []
unique xs = [lista | lista <- xs, lista  ] -}

cuadrupla :: Int -> Int -> Int -> Int -> [(Int, Int, Int, Int)]
cuadrupla a b c d = [ (a,b,c,d) | a > 0 && a <= 100, b > 0 && b <= 100, c > 0 && c <= 100, d > 0 && d <= 100,a^2 + b^2 == c^2 + d^2]