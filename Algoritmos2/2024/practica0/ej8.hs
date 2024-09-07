{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use or" #-}
{-# HLINT ignore "Eta reduce" #-}
{-# HLINT ignore "Use sum" #-}
{-# HLINT ignore "Use and" #-}
{-# HLINT ignore "Use isAsciiLower" #-}
{-# HLINT ignore "Use isAsciiUpper" #-}
module Practica0 where

import Data.List

{-
8) Redefinir las funciones del ejercicio anterior usando foldr, map y filter.
ver su definición en https://hoogle.haskell.org/
-}

-- a) 'suma', que suma todos los elementos de una lista de números
suma :: (Num a) => [a] -> a
suma l = foldr (+) 0 l

--b) 'alguno', que devuelve True si algún elemento de una
--lista de valores booleanos es True, y False en caso
--contrario
alguno :: [Bool] -> Bool
alguno l = foldr (||) False l

--c) 'todos', que devuelve True si todos los elementos de
--una lista de valores booleanos son True, y False en caso
--contrario
todos :: [Bool] -> Bool
todos l = foldr (&&) True l

--d) 'codes', que dada una lista de caracteres, devuelve la
--lista de sus ordinales

codes :: [Char] -> [Int]
codes xs = map code xs

code :: Char -> Int
code c = buscar c (zip (['a'..'n'] ++ ['ñ'] ++ ['o'..'z']) [1..])

buscar :: Char -> [(Char,Int)] -> Int
buscar c [] = error "El caracter no tiene ordinal"
buscar c ((x,i):xs)
    | x == c = i
    | otherwise = buscar c xs

--e) 'restos', que calcula la lista de los restos de la
--división de los elementos de una lista de números dada por otro
--número dado
restos :: (Num a, Ord a) => a -> [a] -> [a]
restos n xs = map (resto n) xs

resto :: (Num a, Ord a) => a -> a -> a
resto n x = x - divisionEntera x n * n

divisionEntera :: (Num a, Ord a) => a -> a -> a
divisionEntera x n = divisionEntera' x n 1

divisionEntera' :: (Num a, Ord a) => a -> a -> a -> a
divisionEntera' _ 0 _ = error "No es posible dividir por cero."
divisionEntera' x n d
    | n * d < x = divisionEntera' x n (d + 1)
    | n * d == x = d
    | otherwise = d-1

--f) 'cuadrados', que dada una lista de números, devuelva la
--lista de sus cuadrados

cuadrados :: (Num a) => [a] -> [a]
cuadrados xs = map (^2) xs
--g) 'longitudes', que dada una lista de listas, devuelve la
--lista de sus longitudes

longitudes :: [[a]] -> [Int]
longitudes xss = map length xss

--h) 'orden', que dada una lista de pares de números, devuelve
--la lista de aquellos pares en los que la primera componente es
--menor que el triple de la segunda
orden :: (Num a, Ord a) => [(a,a)] -> [(a,a)]
orden ((x,y):xs) = filter (\(x,y) -> x < (y*3)) xs

--i) 'pares', que dada una lista de enteros, devuelve la lista
--de los elementos pares
pares :: [Int] -> [Int]
pares xs = filter even xs

--j) 'letras', que dada una lista de caracteres, devuelve la
--lista de aquellos que son letras (minúsculas o mayúsculas)
letras :: [Char] -> [Char]
letras xs = filter (\x -> x >= 'a' && x <= 'z' || x >= 'A' && x <= 'Z') xs

--k) 'masDe', que dada una lista de listas 'xss' y un
--número 'n', devuelve la lista de aquellas listas de 'xss'
--con longitud mayor que 'n'
masDe :: [[a]] -> Int -> [[a]]
masDe xss n = filter (\x -> length x > n) xss