fa :: (Int -> Int) -> (Bool -> Bool)
fa f b
    | f 3 == 8 && b == True = False
    | otherwise = True

fb :: Bool -> (Int -> Bool)
fb b i
    | b == True && i > 8 = True
    | otherwise = False

fc :: Char -> Char
fc c = 'A'

fd :: Int -> (Int -> Bool) -> [Int]
fd 0 _ = []
fd x f
    | x > 10 && f 2 == True = x : fd (x-1) f
    | otherwise = fd (x-1) f

fe :: [a] -> (a -> [b]) -> [b]
fe [] _ = []
fe (x:xs) f = f x ++ fe xs f

ff :: [[a]] -> (a -> Bool) -> [a]
ff [] _ = []
ff ((x:xs):xss) f
    | f x == True = x: ff (xs:xss) f
    | otherwise = ff (xs:xss) f

fg :: (a,b,c) -> Bool
fg (x,y,z) = True

fh :: (a,b,c) -> Int -> c
fh (x,y,z) n
    | n > 8 = z
    | otherwise = error "n es menor a 8."

fi :: (a,a,a) -> Int -> a
fi (x,y,z) 0 = x
fi (x,y,z) n
    | n > 0 = y
    | otherwise = z