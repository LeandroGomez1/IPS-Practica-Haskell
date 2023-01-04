{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use map" #-}
{-# HLINT ignore "Use foldr" #-}
{-# HLINT ignore "Use even" #-}
{-# HLINT ignore "Move guards forward" #-}
{-# HLINT ignore "Use isAsciiLower" #-}
{-# HLINT ignore "Use isAsciiUpper" #-}
suma :: [Int] -> Int
suma [] = 0
suma [x] = x
suma (x:xs) = x + suma xs

alguno :: [Bool] -> Bool
alguno [] = False
alguno [True] = True
alguno (x:xs) = alguno xs

todos :: [Bool] -> Bool
todos [] = True
todos [False] = False
todos (x:xs) = todos xs

codes :: [char] -> [Int]
codes [] = []
codes (x:xs) = [a | (x, a) <- zip (x:xs) [1..27]]

restos :: [Int] -> Int -> [Int]
restos _ 0 = error "No existe tal division"
restos [] _ = []
restos (x:xs) n = mod x n : restos xs n

cuadrados :: [Int] -> [Int]
cuadrados [] = []
cuadrados (x:xs) = x ^ 2 : cuadrados xs

contador :: [a] -> Int
contador [] = 0
contador [x] = 1
contador (x:xs) = 1 + contador xs

longitudes :: [[a]] -> [Int]
longitudes [] = []
longitudes [[]] = [0]
longitudes ([]:x:y) = [0, contador x, contador y]
longitudes ((x:xs):xss) = contador (x:xs) : longitudes xss

orden :: (Ord a, Num a) => [(a,a)] -> [(a,a)]
orden [] = []
orden ((x,y):xss)
    | x < y*3 = (x,y) : orden xss
    | otherwise = orden xss

pares :: [Int] -> [Int]
pares [] = []
pares (x:xs)
    | even x = x : pares xs
    | otherwise = pares xs

letras :: [Char] -> [Char]
letras [] = []
letras (x:xs)
    | (x >= 'a' && x <= 'z') || (x >= 'A' && x <= 'Z') = x : letras xs
    | otherwise = letras xs

masDe :: Ord a => [[a]] -> Int -> [[a]]
masDe [] _ = []
masDe [[]] _ = []
masDe ([]:x:t) n
    | contador x > n = x : masDe t n
    | otherwise = masDe t n
masDe ((x:xs):xss) n
    | contador (x:xs) > n = (x:xs) : masDe xss n
    | otherwise = masDe xss n
