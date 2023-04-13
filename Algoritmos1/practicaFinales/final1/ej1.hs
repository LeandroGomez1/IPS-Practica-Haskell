sumaDivisores :: Int -> Int
sumaDivisores x = sum [d | d <- [1..x], x `mod` d == 0, d /= x]

perfectosN :: Int -> [Int]
perfectosN x = [x | x <- [1..x], x == sumaDivisores x]