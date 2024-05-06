module Practica0 where
import Data.List

-- 2. Definir las siguientes funciones y determinar su tipo:

--a) five, que dado cualquier valor, devuelve 5
five :: a -> Int
five _ = 5

--b) apply, que toma una función y un valor, y devuelve el resultado de
--aplicar la función al valor dado

apply :: t -> t
apply f = f

--c) identidad, la función identidad
identidad :: Int -> Int
identidad x = x

--d) first, que toma un par ordenado, y devuelve su primera componente
first :: (a,b) -> a
first (x,y) = x

--e) derive, que aproxima la derivada de una función dada en un punto dado
derive :: (Fractional a) => (a -> a) -> a -> a
derive f x = (f (x + h) - f x) / h
    where
        h = 0.000001

--f) sign, la función signo
sign :: Int -> Char
sign x
    | x == 0 = error "El cero no tiene signo"
    | x < 0 = '-'
    | otherwise = '+'

--g) vabs, la función valor absoluto (usando sign y sin usarla)
vabs1 :: Int -> Int
vabs1 x
    | sign x == '-' = x * (-1)
    | otherwise = x

vabs2 :: Int -> Int
vabs2 x
    | x < 0 = x * (-1)
    | otherwise = x

--h) pot, que toma un entero y un número, y devuelve el resultado de
--elevar el segundo a la potencia dada por el primero
pot :: (Num a) => Int -> a -> a
pot p x = x^2

--i) xor, el operador de disyunción exclusiva
xor :: Int -> Int -> Int
xor 0 0 = 0
xor 0 1 = 1
xor 1 0 = 1
xor 1 1 = 0
xor _ _ = error "Valor ingresado no valido"

--j) max3, que toma tres números enteros y devuelve el máximo entre ellos
max3 :: Int -> Int -> Int -> Int
max3 x y = max (max x y)

--k) swap, que toma un par y devuelve el par con sus componentes invertidas
swap :: (a,b) -> (b,a)
swap (x,y) = (y,x)