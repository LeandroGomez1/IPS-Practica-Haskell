--Contador de elementos en una lista
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}

contador[] = 0
contador (x:xs) = 1 + contador xs
