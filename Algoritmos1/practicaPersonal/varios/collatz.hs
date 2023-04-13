collatzSequence :: Int -> [Int]
collatzSequence 1 = [1]
collatzSequence x
    | even x = x : collatzSequence (div x 2)
    | otherwise = x : collatzSequence ((x * 3) + 1)
