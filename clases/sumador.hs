--Suma de elementos de una lista
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}

suma :: Num p => [p] -> p
suma[] = 0
suma (x:t) = x + suma t

suma2 :: Num p => [p] -> p
suma2 = sum