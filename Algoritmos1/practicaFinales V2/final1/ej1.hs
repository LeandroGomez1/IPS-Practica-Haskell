perfectosN :: Int -> [Int]
perfectosN n = [x | x <- [1..n], x == sumaDivisores x]
    where
        sumaDivisores x = sum [p | p <- [1..x], mod x p == 0, p /= x]