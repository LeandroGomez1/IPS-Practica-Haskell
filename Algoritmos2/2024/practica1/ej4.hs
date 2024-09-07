foo1 :: Bool -> Bool -> Bool
foo1 p = if p then (p &&) else (p &&)

foo2 :: (t1 -> t2) -> (t3 -> t1) -> t3 -> t2
foo2 x y z = x (y z)

foo3 :: (t1 -> t2 -> t3) -> t1 -> t2 -> t3
foo3 x y z = x y z

foo4 :: (t -> a) -> t -> [a] -> [a]
foo4 x y z = x y : z

foo5 :: a -> (t -> [a]) -> t -> [a]
foo5 x y z = x : y z

foo6 :: [a] -> (t -> [a]) -> t -> [a]
foo6 x y z = x ++ y z

foo7 :: [[a]] -> ([[a]] -> Bool) -> [a]
foo7 a b = if b a then head a else [ ]

foo8 :: [a] -> ([a] -> Bool) -> [a]
foo8 a b = if b a then a else [ ]

{- foo9 :: [a1] -> ([a1] -> Bool) -> a2 -> [a2]
foo9 a b = if b a then head (:a) else (:[ ]) -}