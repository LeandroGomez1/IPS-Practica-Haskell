{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use map" #-}
{-# HLINT ignore "Use foldr" #-}
{-# HLINT ignore "Use even" #-}
{-# HLINT ignore "Move guards forward" #-}
suma :: [Int] -> Int
suma [] = error "Lista vacia."
suma [x] = x
suma (x:xs) = x + suma xs

alguno :: [Bool] -> Bool
alguno [True] = True
alguno [x] = False
alguno [] = error "Lista vacia."
alguno (x:xs)
    | alguno [x] = True
    | otherwise = alguno xs

todos :: [Bool] -> Bool
todos [False] = False
todos [x] = x
todos [] = error "Lista vacia."
todos (x:xs)
    | not (todos [x]) = False
    | otherwise = todos xs


{-
codes :: [char] -> [Int]
codes [] = []
codes (x:xs) =  : codes xs
-}

restos :: [Int] -> Int -> [Int]
restos _ 0 = error "No existe tal division"
restos [] _ = []
restos (x:xs) n = mod x n : restos xs n

cuadrados :: [Int] -> [Int]
cuadrados [] = []
cuadrados (x:xs) = x^2 : cuadrados xs

contador :: [a] -> Int
contador [] = 0
contador (x:xs) = 1 + contador xs

longitudes :: [[a]] -> [Int]
longitudes [] = []
longitudes [[]] = [0]
longitudes ([]:y:t) = [0, contador y]
longitudes ((x:xs):xss) = (1 + contador xs) : longitudes xss

orden :: [(Int, Int)] -> [(Int, Int)]
orden [] = []
orden ((x,y):xs) = [(x,y) | (x,y) <- (x,y):xs, x < (3 * y)]

pares :: [Int] -> [Int]
pares [] = []
pares (x:xs) = [ x | x <- x:xs, mod x 2 == 0]

isLetra :: Char -> Bool
isLetra c = ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z')

letras :: [Char] -> [Char]
letras [] = []
letras (x:xs)
    | isLetra x = x : letras xs
    | otherwise = letras xs

masDe :: [[a]] -> Int -> [[a]]
masDe [] _ = []
masDe [[]] _ = []
masDe ([]:_:_) _ = [[]]
masDe ((x:xs):xss) n = [x:xs |(x:xs) <- (x:xs):xss, (1 + contador xs) > n]