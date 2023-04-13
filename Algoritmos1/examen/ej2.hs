sumaDivisores :: Int -> Int
sumaDivisores x = sum [p | p <- [1..x], mod x p == 0, p /= x]

perfectos :: Int -> [Int]
perfectos n = [x | x <- [1..n], sumaDivisores x == x]
