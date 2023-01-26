{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use map" #-}
{-# HLINT ignore "Use foldr" #-}
{-# HLINT ignore "Use even" #-}
{-# HLINT ignore "Use isAsciiUpper" #-}
{-# HLINT ignore "Use isAsciiLower" #-}
import Data.Char ( ord )

--------------------------------------------------------------
suma :: [Int] -> Int
suma [] = error "Lista vacia"
suma [x] = x
suma (x:xs) = x + suma xs

--------------------------------------------------------------
alguno :: [Bool] -> Bool
alguno [] = False
alguno (x:xs)
    | not x = alguno xs
    | otherwise = True

--------------------------------------------------------------
todos :: [Bool] -> Bool
todos [] = True
todos (x:xs)
    | not x = False
    | otherwise = todos xs

--------------------------------------------------------------
codes :: [Char] -> [Int]
codes [] = []
codes (x:xs) = ord x : codes xs

--------------------------------------------------------------
restos :: [Int] -> Int -> [Int]
restos [] _ = []
restos (x:xs) 0 = error "No es posible dividir por cero."
restos (x:xs) num = mod x num : restos xs num

--------------------------------------------------------------
cuadrados :: [Int] -> [Int]
cuadrados [] = []
cuadrados (x:xs) = x^2 : cuadrados xs

--------------------------------------------------------------
contador :: [a] -> Int
contador [] = 0
contador (x:xs) = 1 + contador xs

longitudes :: [[a]] -> [Int]
longitudes [] = []
longitudes [[]] = []
longitudes ([]:xs:xss) = 0 : longitudes xss
longitudes ((x:xs):xss) = contador (x:xs) : longitudes xss

--------------------------------------------------------------
orden :: [(Int,Int)] -> [(Int,Int)]
orden [] = []
orden ((x,y):xs)
    | x < 3*y = (x,y) : orden xs
    | otherwise = orden xs

--------------------------------------------------------------
pares :: [Int] -> [Int]
pares [] = []
pares (x:xs)
    | mod x 2 == 0 = x : pares xs
    | otherwise = pares xs

--------------------------------------------------------------
letras :: [Char] -> [Char]
letras [] = []
letras (x:xs)
    | (x >= 'a' && x <= 'z') || (x >= 'A' && x <= 'Z') = x : letras xs
    | otherwise = letras xs

--------------------------------------------------------------
masDe :: [[a]] -> Int -> [[a]]
masDe [] _ = []
masDe [[]] _ = []
masDe ([]:xs:xss) num = xs: masDe xss num
masDe ((x:xs):xss) num
    | contador (x:xs) > num = (x:xs) : masDe xss num
    | otherwise = masDe xss num