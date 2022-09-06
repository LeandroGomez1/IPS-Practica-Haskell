five :: Num p1 => p2 -> p1
five x = 5

apply :: p -> p
apply f = f

id1 :: p -> p
id1 x = x

first :: p1 -> p2 -> p1
first x y = x

sign :: (Ord a, Num a) => a -> Char
sign x = if x > 0
        then '+'
        else '-'

absSign :: (Ord a, Num a) => a -> a
absSign x = if sign x == '+'
            then x
            else negate x

absNoSign :: (Ord a, Num a) => a -> a
absNoSign x = if x > 0
        then x
        else negate x

pot :: (Integral b, Num a) => b -> a -> a
pot exp x = x ^ exp

max3 :: Ord a => a -> a -> a -> a
max3 x1 x2 x3
  | x1 >= x2 && x1 >= x3 = x1
  | x2 >= x1 && x2 >= x3 = x2
  | otherwise = x3

--max3 x1 x2 x3 = maximum [x1, x2, x3]

swap :: t1 -> (t1 -> t2) -> t2
swap x y = y x
