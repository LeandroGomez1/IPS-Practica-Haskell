replica :: Int -> a -> [a]
replica n a
    | n <= 0 = []
    | otherwise = a : replica (n-1) a