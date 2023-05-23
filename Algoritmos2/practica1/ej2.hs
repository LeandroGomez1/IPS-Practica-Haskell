-- 2. Definir usando listas por comprensi´on las funciones:

{- a) cambios : [a] -> [Int], que dada una lista, devuelve la lista de los ´ındices en que la lista
cambia. Es decir, dada la lista s retorna la lista con los i tal que si != si+1
cambios [1, 1, 1, 3, 3, 1, 1] = [2, 4] -}

{- b) oblongoNumber :: [Int] que genera la lista de los n´umeros oblongos. Un n´umero es oblongo
si es el producto de dos naturales consecutivos. Por ejemplo, los n´umeros [2, 6, 12, 20, ...] -}

oblongoNumber :: Int -> [Int]
oblongoNumber n = [x * (x-1) | x <- [2..n]]

{- c) abundantes :: [Integer] que es la lista de todos los n´umeros abundantes. Un n´umero natural
n se denomina abundante si es menor que la suma de sus divisores propios. Por ejemplo, 12
y 30 son abundantes pero 5 y 28 no lo son. Por ejemplo abundates = [12, 18, 20, 24, 30, 36, ... -}

abundantes :: [Integer]
abundantes = [n | n <- [1..], n < sum [d | d <- [1..(n-1)], n `mod` d == 0]]

{- d) eco que devuelve la cadena obtenida a partir de la cadena xs repitiendo cada elemento tantas
veces como indica su posici´on. No usar listas por comprensi´on. Por ejemplo: eco "hola" =
"hoolllaaaa" -}

repite :: a -> Int -> [a]
repite c n
    | n == 0 = []
    | n == 1 = [c]
    | n > 1 = c : repite c (n-1)
{- eco :: [a] -> [a]
eco xs = [repite y x | (x,y) <- zip [1..] xs] -}  -- ¡¡¡Corregir!!!

{- e) euler :: Int -> Int tal que euler n es la suma de todos los m´ultiplos de 3 ´o 5 menores que n.
Por ejemplo, euler 10 = 23. Puedes usar sin definir la funci´on sum que suma los elementos
de una lista. -}

euler :: Int -> Int
euler n = sum multiplos3 + sum multiplos5
    where
        multiplos3 = [a*3 | a <- [1..n], a*3 < n]
        multiplos5 = [b*5 | b <- [1..n], b*5 < n]

{- f) expandir :: [Int] -> [Int] que reemplace en una lista de n´umeros positivos cada n´umero n por
n copias de s´ı mismo:
Ejemplo: expandir [3, 4, 2] = [3, 3, 3, 4, 4, 4, 4, 2, 2] -}

{-expandir :: [Int] -> [Int]
expandir xs = [repite a a | a <- xs] -}    -- ¡¡¡ CORREGIR !!!