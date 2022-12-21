{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use map" #-}
{-# HLINT ignore "Use isAsciiLower" #-}
{-# HLINT ignore "Use isAsciiUpper" #-}

-- Ej 1
---------------------------------------------------------------------
myXor :: Int -> Int -> Int
myXor 0 0 = 0
myXor 0 1 = 1
myXor 1 0 = 1
myXor 1 1 = 0
myXor _ _ = error "El valor ingresado no es correcto"

---------------------------------------------------------------------
max3 :: Ord a => a -> a -> a -> a
max3 x y z
    | (x > y) && (x > z) = x
    | (y > x) && (y > z) = y
    | otherwise = z

-- Ej 5
---------------------------------------------------------------------
esBisiesto :: Int -> Bool
esBisiesto año
    | año `mod` 4 == 0 = True
    | otherwise = False

-- Ej 6
---------------------------------------------------------------------
suma :: [Int] -> Int
suma [] = 0
suma [x] = x
suma (x:xs) = x + suma xs

---------------------------------------------------------------------
alguno :: [Bool] -> Bool
alguno [] = False
alguno [True] = True
alguno (x:xs) = alguno xs

---------------------------------------------------------------------
todos :: [Bool] -> Bool
todos [] = True
todos [False] = False
todos (x:xs) = todos xs

---------------------------------------------------------------------
restos :: [Int] -> Int -> [Int]
restos lista 0 = error "No es posible dividir por 0."
restos [] _ = []
restos [0] _ = [0]
restos [x] 1 = [x]
restos (x:xs) num = x `mod` num : restos xs num

---------------------------------------------------------------------
cuadrados :: [Int] -> [Int]
cuadrados [] = []
cuadrados (x:xs) = x ^ 2 : cuadrados xs

---------------------------------------------------------------------
contador :: [a] -> Int
contador [] = 0
contador [x] = 1
contador (x:xs) = 1 + contador xs

longitudes :: [[a]] -> [Int]
longitudes [] = []
longitudes [[]] = [0]
longitudes ([]:x:y) = [0, contador x, contador y]
longitudes ((x:xs):xss) = contador (x:xs) : longitudes xss

---------------------------------------------------------------------
orden :: (Ord a, Num a) => [(a,a)] -> [(a,a)]
orden [] = []
orden ((x,y):xss)
    | x < y*3 = (x,y) : orden xss
    | otherwise = orden xss

---------------------------------------------------------------------
pares :: [Int] -> [Int]
pares [] = []
pares (x:xs)
    | even x = x : pares xs
    | otherwise = pares xs

---------------------------------------------------------------------
letras :: [Char] -> [Char]
letras [] = []
letras (x:xs)
    | (x >= 'a' && x <= 'z') || (x >= 'A' && x <= 'Z') = x : letras xs
    | otherwise = letras xs

---------------------------------------------------------------------
masDe :: Ord a => [[a]] -> Int -> [[a]]
masDe [] _ = []
masDe [[]] _ = []
masDe ([]:x:t) n
    | contador x > n = x : masDe t n
    | otherwise = masDe t n
masDe ((x:xs):xss) n
    | contador (x:xs) > n = (x:xs) : masDe xss n
    | otherwise = masDe xss n

-- Ej 7
---------------------------------------------------------------------
prodEscalarRecur :: [Int] -> [Int] -> Int
prodEscalarRecur [] _ = 0
prodEscalarRecur _ [] = 0
prodEscalarRecur (x:xs) (y:ys) = x*y + prodEscalarRecur xs ys

-- prodEscalar :: [Int] -> [Int] -> Int
-- prodEscalar [] _ = 0
-- prodEscalar _ [] = 0
-- prodEscalar (x:xs) (y:ys) = [z | z <- zip (x:xs) (y:ys), z == x * y] + prodEscalar xs ys

-- Ej 8
---------------------------------------------------------------------
divisors :: Int -> [Int]
divisors num
    | num < 0 = []
    | otherwise = [x | x <- [1..num], num `mod` x == 0]
---------------------------------------------------------------------
matches :: Int -> [Int] -> [Int]
matches _ [] = []
matches num lista = [x | x <- lista, x == num]
---------------------------------------------------------------------
-- isUnique :: Int -> [Int] -> Bool
-- isUnique _ [] = True
-- isUnique num (x:xs)
--     | num == x = False
--     | otherwise = isUnique x xs

-- unique :: [Int] -> [Int]
-- unique [] = []
-- unique [x] = [x]
-- unique (x:xs) = [y | y <- x:xs, y /= unique xs]
---------------------------------------------------------------------
cuadrupla :: Int -> Int -> Int -> Int -> [(Int, Int, Int, Int)]
cuadrupla a b c d = [ (a,b,c,d) | a > 0 && a <= 100, b > 0 && b <= 100, c > 0 && c <= 100, d > 0 && d <= 100,a^2 + b^2 == c^2 + d^2]
