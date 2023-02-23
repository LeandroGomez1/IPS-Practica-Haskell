mdrop :: Int -> [a] -> [a]
mdrop _ [] = []
mdrop 0 l = l
mdrop n (x:t) = mdrop (n - 1) t