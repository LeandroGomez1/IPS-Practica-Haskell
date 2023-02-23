{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use map" #-}
mMap :: (t -> a) -> [t] -> [a]
mMap f [] = []
mMap f (x:xs) = f x : mMap f xs