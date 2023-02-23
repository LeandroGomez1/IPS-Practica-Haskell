{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use map" #-}
mMap :: (t -> a) -> [t] -> [a]
mMap f [] = []
mMap f (x:xs) = f x : mMap f xs

mMap2 :: (t -> a) -> [t] -> [a]
mMap2 f p = [f x | x <- p]
