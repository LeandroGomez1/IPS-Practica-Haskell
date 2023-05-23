-- 1. Definir las siguientes funciones en forma recursiva:

{- a) borrarUltimo que dada una lista borra el ´ultimo elemento de la lista. No utilizar reverse, ni
tail. -}

borrarUltimo :: [a] -> [a]
borrarUltimo [] = []
borrarUltimo [x,y] = [x]
borrarUltimo (x:xs) = x : borrarUltimo xs

{- b) collect :: [(k, v)] ! toma un lista de pares (clave, valor) y asocia cada clave ´unica con todos
los valores con los que estaba apareada originalmente. Por ejemplo: collect -}

{- c) serie que se comporta de la siguiente manera: serie [1, 2, 3] = [[ ], [1], [1, 2], [1, 2, 3]] Dar su
tipo m´as general. -}

serie :: [a] -> [[a]]
serie [] = []
serie [x] = [[x]]
serie (x:xs) = [] : serie (borrarUltimo (x:xs)) ++ [x:xs]

{- d) paresIguales :: Int -> Int -> Int -> Int -> Bool toma 4 n´umeros enteros y retorna True si de
dos en dos son iguales (en cualquier orden), en los dem´as casos retorna False. Por ejemplo:
paresIguales 3 1 1 2 = False paresIguales 3 1 3 1 = True paresIguales 3 3 1 1 = True
paresIguales 3 1 1 3 = True -}

-- ¡¡¡ NO RECURSIVO !!!
paresIguales :: Int -> Int -> Int -> Int -> Bool
paresIguales w x y z
    | w == x =
        y == z
    | ((w == y) || (w == z)) && ((x == y) || (x == z)) = True
    | otherwise = False

{- e) isosceles :: Int -> Int -> Int -> Bool que dadas la longitud de los lados de un tri´angulo nos
dice si es un tri´angulo is´osceles -}

-- ¡¡¡ NO RECURSIVO !!!
isosceles :: Int -> Int -> Int -> Bool
isosceles l1 l2 l3
    | (l1 == l2) && (l1 /= l3) = True
    | (l1 == l3) && (l1 /= l2) = True
    | otherwise = False

{- f) ror que dada una lista xs y un entero n, tal que n <= lenght xs, rota los primeros n elementos
de xs a la derecha: ror 3 [1, 2, 3, 4, 5] = [4, 5, 1, 2, 3]. Definir una versi´on recursiva de ror,
sin usar drop, take ni tail. -}

{- ror :: [a] -> Int -> [a]
ror [] _ = []
ror [x] _ = [x]
ror (x:xs) n
    | n > length (x:xs) = error "n es mayor al largo de la lista."
    | otherwise = -}

{- g) upto :: Int -> Int -> [Int] que dado dos n´umeros enteros n y m devuelve la lista [n, n + 1, n +
2, ..., m ] en caso que n <= m y la lista [] en otro caso. No usar listas por comprensi´on. -}

upto :: Int -> Int -> [Int]
upto n m
    | n > m = []
    | n == m = [n]
    | n < m = n : upto (n+1) m

{- h) eco que devuelve la cadena obtenida a partir de la cadena xs repitiendo cada elemento tantas
veces como indica su posici´on. No usar listas por comprensi´on.
Por ejemplo: eco "hola" = "hoolllaaaa" -}

repite :: Char -> Int -> [Char]
repite c n
    | n == 0 = []
    | n == 1 = [c]
    | n > 1 = c : repite c (n-1)

{-
eco :: [Char] -> [Char]
eco [] = []
eco (x:xs) = repite x n ++ eco xs
    where
        n = [1..] -}  -- ¡¡¡ CORREGIR !!!