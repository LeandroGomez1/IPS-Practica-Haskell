suma :: [Int] -> Int
suma [] = error "Lista vacia"
suma [x] = x
suma (x:xs) = x + suma xs

alguno :: [Bool] -> Bool
alguno [] = False
alguno (x:xs)
    | not x = alguno xs
    | otherwise = True

todos :: [Bool] -> Bool
todos [] = True
todos (x:xs)
    | not x = False
    | otherwise = todos xs

codes :: [Char] -> [Int]
codes [] = []
codes (x:xs) = [1..]