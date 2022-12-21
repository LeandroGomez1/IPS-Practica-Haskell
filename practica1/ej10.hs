data DigBin = Cero | Uno deriving Show
type NumBin = [DigBin]

sumaDig :: DigBin -> DigBin -> NumBin
sumaDig Cero Cero = [Cero]
sumaDig Cero Uno = [Uno]
sumaDig Uno Cero = [Uno]
sumaDig Uno Uno = [Uno, Cero]

producDig :: DigBin -> Int
producDig Cero = 0 * 2
producDig Uno = 1 * 2

divDig :: DigBin -> Int
divDig Cero = div 0 2
divDig Uno = div 1 2

modDig :: DigBin -> Int
modDig Cero = mod 0 2
modDig Uno = mod 1 2