data DigBin = Cero | Uno deriving Show
type NumBin = [DigBin]

sumaMod2 :: DigBin -> DigBin -> DigBin
sumaMod2 Cero Cero = Cero
sumaMod2 Cero Uno = Uno
sumaMod2 Uno Cero = Uno
sumaMod2 Uno Uno = Cero

producMod2 :: DigBin -> DigBin -> DigBin
producMod2 Cero Cero = Cero
producMod2 Cero Uno = Cero
producMod2 Uno Cero = Cero
producMod2 Uno Uno = Uno

sumaBin :: NumBin -> NumBin -> NumBin
sumaBin num1 [] = num1
sumaBin [] num2 = num2
sumaBin (x:xs) (y:ys) = sumaMod2 x y : sumaBin xs ys

------------------------------ Anda mal ------------------------------
producBin :: NumBin -> NumBin
producBin [] = []
producBin (x:xs) = [producMod2 x y | x <- x:xs, y <- y:ys]
    where
        (y:ys) = [Uno, Cero]

cociBin :: NumBin -> NumBin
cociBin [] = []
cociBin (x:xs) = []
----------------------------------------------------------------------
