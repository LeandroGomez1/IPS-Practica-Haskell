--4) Dar al menos dos ejemplos de funciones que tengan cada uno de los siguientes tipos:
--a) (Int -> Int) -> Int
fa f = f 3 + 2
--b) Int -> (Int -> Int)
fb x y = x + y
--c) (Int -> Int) -> (Int -> Int)
fc f = f (3, 4) + 4
--d) Int -> Bool
fd x
    | x == 1 = True
    | otherwise = False
--e) Bool -> (Bool -> Bool)
fe b1 b2
    | b1 = False
    | not b2 = True
    | otherwise = True
--f) (Int,Char) -> Bool
ff (x,c)
    | (x == 1) && (c == 'a') = True
    | otherwise = False

--g) (Int,Int) -> Int
fg (x,y) = x + y
--h) Int -> (Int,Int)
fh x = (x+2, 8)
--i) a -> Bool
fi a = True
--j) a -> a
fj a = a