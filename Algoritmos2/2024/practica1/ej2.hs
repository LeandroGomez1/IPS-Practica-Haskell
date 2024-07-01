cambios :: (Eq a) => [a] -> [Int]
cambios xs = [i | (x,i) <- zip xs [0..], (y,j) <- zip (tail xs) [0..], x /= y && i == j]
------------------------------------------------------------------------------------------
oblongoNumber :: [Int]
oblongoNumber = [x * (x - 1) | x <- [2..10]]
------------------------------------------------------------------------------------------
abundantes :: [Integer]
abundantes = [x | x <- [1..100], x < sum (divisores x)]
    where
        divisores x = [n | n <- [2..(x-1)], x `mod` n == 0]
------------------------------------------------------------------------------------------
eco :: [a] -> [a]
eco xs = [c | (c, i) <- zip xs [1 ..], j <- [1 .. i]]
------------------------------------------------------------------------------------------
euler :: Int -> Int
euler n = sum [x | x <- [1..n-1], (x `mod` 3 == 0) || (x `mod`5) == 0]
------------------------------------------------------------------------------------------
expandir :: [Int] ->[Int]
expandir xs = [x | x <- xs, y <- [1 .. x]]