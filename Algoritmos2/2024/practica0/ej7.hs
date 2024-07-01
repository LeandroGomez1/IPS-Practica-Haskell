{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use map" #-}
{-# HLINT ignore "Use foldr" #-}
{-# HLINT ignore "Use isAsciiUpper" #-}
{-# HLINT ignore "Use isAsciiLower" #-}
module Practica0 where

import Data.List

--7) Sin usar funciones definidas en el
--preludio, defina recursivamente las siguientes funciones y
--determine su tipo más general:

--a) 'suma', que suma todos los elementos de una lista de números
suma :: [Int] -> Int
suma [] = 0
suma [x] = x
suma (x:xs) = x + suma xs

--b) 'alguno', que devuelve True si algún elemento de una
--lista de valores booleanos es True, y False en caso
--contrario
alguno :: [Bool] -> Bool
alguno [] = False
alguno (x:xs)
    | x = True
    | otherwise = alguno xs

--c) 'todos', que devuelve True si todos los elementos de
--una lista de valores booleanos son True, y False en caso
--contrario
todos :: [Bool] -> Bool
todos [] = True
todos (x:xs)
    | not x = False
    | otherwise = todos xs

--d) 'codes', que dada una lista de caracteres, devuelve la
--lista de sus ordinales
code :: Char -> Int
code c = buscar c (zip (['a'..'n'] ++ ['ñ'] ++ ['o'..'z']) [1..])

buscar :: Char -> [(Char,Int)] -> Int
buscar c [] = error "El caracter no tiene ordinal"
buscar c ((x,i):xs)
    | x == c = i
    | otherwise = buscar c xs

codes ::[Char] -> [Int]
codes [] = []
codes (x:xs) = code x : codes xs

--e) 'restos', que calcula la lista de los restos de la
--división de los elementos de una lista de números dada por otro
--número dado
restos 0 _ = error "No es posible dividir por 0"
restos _ [] = []
restos n (x:xs) = resto n x : restos n xs

resto n x = x - divisionEntera x n 1 * n

divisionEntera x n d
    | n * d < x = divisionEntera x n (d + 1)
    | n * d == x = d
    | otherwise = d-1

--f) 'cuadrados', que dada una lista de números, devuelva la
--lista de sus cuadrados
cuadrados :: (Num a) => [a] -> [a]
cuadrados [] = []
cuadrados (x:xs) = x * x : cuadrados xs

--g) 'longitudes', que dada una lista de listas, devuelve la
--lista de sus longitudes
longitudes :: [[a]] -> [Int]
longitudes [] = []
longitudes (xs:xss) = longitud xs : longitudes xss

longitud :: [a] -> Int
longitud [] = 0
longitud (x:xs) = 1 + longitud xs

--h) 'orden', que dada una lista de pares de números, devuelve
--la lista de aquellos pares en los que la primera componente es
--menor que el triple de la segunda
orden :: (Num a, Ord a) => [(a,a)] -> [(a,a)]
orden [] = []
orden ((x,y):xs)
    | x < (y*3) = (x,y) : orden xs
    | otherwise = orden xs
    
--i) 'pares', que dada una lista de enteros, devuelve la lista
--de los elementos pares
pares :: [Int] -> [Int]
pares [] = []
pares (x:xs)
    | resto 2 x == 0 = x : pares xs
    | otherwise = pares xs

--j) 'letras', que dada una lista de caracteres, devuelve la
--lista de aquellos que son letras (minúsculas o mayúsculas)
letras :: [Char] -> [Char]
letras [] = []
letras (x:xs)
    | (x >= 'a' && x <= 'z') || (x >= 'A' && x <= 'Z') = x : letras xs
    | otherwise = letras xs

--k) 'masDe', que dada una lista de listas 'xss' y un
--número 'n', devuelve la lista de aquellas listas de 'xss'
--con longitud mayor que 'n'
masDe :: [[a]] -> Int -> [[a]]
masDe [] _ = []
masDe (xs:xss) n
    | longitud xs > n = xs : masDe xss n
    | otherwise = masDe xss n