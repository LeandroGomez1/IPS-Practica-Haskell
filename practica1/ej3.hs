-- a) f x = let (y,z) = (x,x) in y

f1 x = ((x,x), z)

-- b) greater (x,y) = if x > y then True else False

greater (x,y)
    | x > y = True
    | otherwise = False
    
-- c) f (x,y) = let z = x + y in g (z,y) where g (a,b) = a − b

f2 (x,y) = (((x + y), y) - b)