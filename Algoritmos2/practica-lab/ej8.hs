import Data.Char (ord)
{-
8) Redefinir las funciones del ejercicio anterior usando foldr, map y filter.
ver su definición en https://hoogle.haskell.org/
-}

-- a) 'suma', que suma todos los elementos de una lista de números

suma :: (Num a) => [a] -> a
suma (x:xs) = foldr (+) x xs

{- b) 'alguno', que devuelve True si algún elemento de una
lista de valores booleanos es True, y False en caso
contrario -}

alguno :: [Bool] -> Bool
alguno = foldr (==) True

{- c) 'todos', que devuelve True si todos los elementos de
una lista de valores booleanos son True, y False en caso
contrario -}

todos :: [Bool] -> Bool
todos = foldr (&&) True

{- d) 'codes', que dada una lista de caracteres, devuelve la
lista de sus ordinales -}

codes :: [Char] -> [Int]
codes = map ord

{- e) 'restos', que calcula la lista de los restos de la
división de los elementos de una lista de números dada por otro
número dado -}

restos :: Int -> [Int] -> [Int]
restos n = map (`mod` n)

{- f) 'cuadrados', que dada una lista de números, devuelva la
lista de sus cuadrados -}

cuadrados :: (Num a) => [a] -> [a]
cuadrados = map (^2)

{- g) 'longitudes', que dada una lista de listas, devuelve la
lista de sus longitudes -}

longitudes :: [[a]] -> [Int]
longitudes = map (foldr (\x -> (+) 1) 0)

{- h) 'orden', que dada una lista de pares de números, devuelve
la lista de aquellos pares en los que la primera componente es
menor que el triple de la segunda -}

orden :: (Num a, Ord a) => [(a,a)] -> [(a,a)]
orden = filter (\(x,y) -> x < y*3)

{- i) 'pares', que dada una lista de enteros, devuelve la lista
de los elementos pares -}

pares :: [Int] -> [Int]
pares = filter (\x -> x `mod` 2 == 0)

{- j) 'letras', que dada una lista de caracteres, devuelve la
lista de aquellos que son letras (minúsculas o mayúsculas) -}

letras :: [Char] -> [Char]
letras = filter (\x -> (x >= 'a' && x <= 'z') || (x >= 'A' && x <= 'Z'))

{- k) 'masDe', que dada una lista de listas 'xss' y un
número 'n', devuelve la lista de aquellas listas de 'xss'
con longitud mayor que 'n' -}
{-
masDe :: [[a]] -> Int -> [[a]]
masDe xss n = filter (map (foldr (\x -> x (+) 1) 0) xss > n) xss -}   -- ¡¡¡¡CORREGIR!!!!