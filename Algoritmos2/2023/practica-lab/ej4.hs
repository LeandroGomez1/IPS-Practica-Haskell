-- 4) Dar al menos dos ejemplos de funciones que tengan cada uno de los siguientes tipos:
-- a) (Int -> Int) -> Int

a :: (Int -> Int) -> Int
a f = f 2

aa :: (Int -> Int) -> Int
aa f = f 2 * 3

-- b) Int -> (Int -> Int)
b :: Int -> (Int -> Int)
b f x = f

bb :: Int -> (Int -> Int)
bb f x = 2 + f

-- c) (Int -> Int) -> (Int -> Int)



-- d) Int -> Bool
-- e) Bool -> (Bool -> Bool)
-- f) (Int,Char) -> Bool
-- g) (Int,Int) -> Int
-- h) Int -> (Int,Int)
-- i) a -> Bool
-- j) a -> a