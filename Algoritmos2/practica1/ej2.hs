-- 2. Definir las siguientes funciones y determinar su tipo:

-- a) five, que dado cualquier valor, devuelve 5

five :: a -> Int
five _ = 5

-- b) apply, que toma una función y un valor, y devuelve el resultado de
-- aplicar la función al valor dado

apply :: f x -> f x
apply f = f

-- c) identidad, la función identidad

identidad :: a -> a
identidad x = x

-- d) first, que toma un par ordenado, y devuelve su primera componente

first :: (a,b) -> a
first (x,y) = x

-- e) derive, que aproxima la derivada de una función dada en un punto dado

derive :: (Fractional a) => (a -> a) -> a -> a
derive f x = (f (x + h) - f x) / h
    where
        h = 0.000001

-- f) sign, la función signo

sign :: (Ord a,Num a) => a -> Char
sign x
    | x >= 0 = '+'
    | otherwise = '-'

-- g) vabs, la función valor absoluto (usando sign y sin usarla)

vabs :: (Ord a, Num a) => a -> a
vabs x
    | sign x == '-' = -x
    | otherwise = x

-- h) pot, que toma un entero y un número, y devuelve el resultado de
-- elevar el segundo a la potencia dada por el primero

pot :: (Num a) => Int -> a -> a
pot p x = x ^ p

-- i) xor, el operador de disyunción exclusiva

xor :: Bool -> Bool -> Bool
xor True False = True
xor False True = True
xor _ _ = False

-- j) max3, que toma tres números enteros y devuelve el máximo entre llos

max3 :: Int -> Int -> Int -> Int
max3 x y z
    | x >= y && x >= z = x
    | y >= x && y >= z = y
    | otherwise = z

-- k) swap, que toma un par y devuelve el par con sus componentes invertidas

swap :: (a,b) -> (b,a)
swap (x,y) = (y,x)
