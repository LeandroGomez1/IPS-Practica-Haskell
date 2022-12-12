{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Move guards forward" #-}

sumadivisores :: Int -> Int
sumadivisores n = sum [x | x <- [1..n], n `mod` x == 0, x/= n] 

perfectosn :: Int -> [Int]
perfectosn n = [x | x <- [1..n], sumadivisores n == n]
---------------------------------------------------------------
juntar :: (Ord a) => [a] -> [a] -> [a]
juntar [] lista2 = lista2
juntar lista1 [] = lista1
juntar (x:xs) (y:ys)
    | x < y = x : juntar xs (y:ys)
    | otherwise = y : juntar ys (x:xs)
---------------------------------------------------------------


