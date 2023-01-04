-- data DigBin = Cero | Uno

-- sumaBinMod2 :: DigBin -> DigBin -> Int
-- sumaBinMod2 Cero Cero = 0
-- sumaBinMod2 Cero Uno = 1
-- sumaBinMod2 Uno Cero = 1
-- sumaBinMod2 Uno Uno = 0

-- producBin :: DigBin -> DigBin -> Int
-- producBin Uno Uno = 1
-- producBin _ _ = 0

-- type NumBin = [DigBin]

-- suma2Bin :: DigBin -> DigBin -> Int
-- suma2Bin Cero Cero = 0
-- suma2Bin Cero Uno = 1
-- suma2Bin Uno Cero = 1
-- suma2Bin Uno Uno = 10

-- sumaBin :: NumBin -> [Int]
-- sumaBin [] = []
-- sumaBin [Cero] = [0]
-- sumaBin [Uno] = [1]
-- sumaBin (x:xs:xss) = suma2Bin x xs : sumaBin xss

-- producDig :: DigBin -> Int
-- producDig Cero = 0
-- producDig Uno = 2


-- produc2Bin :: NumBin -> [Int]
-- produc2Bin [] = []
-- produc2Bin [Cero] = [1*0]
-- produc2Bin [Uno] = [1*2]
-- produc2Bin (x:xs) = producDig x : produc2Bin xs

-- cociBin :: DigBin -> Int
-- cociBin Cero = div 0 2
-- cociBin Uno = div 1 2

-- coci2Bin :: NumBin -> [Int]
-- coci2Bin [] = []
-- coci2Bin [Cero] = [div 0 2]
-- coci2Bin [Uno] = [div 1 2]
-- coci2Bin (x:xs) = cociBin x : coci2Bin xs

-- modBin :: DigBin -> Int
-- modBin Cero = mod 0 2
-- modBin Uno = mod 1 2

-- mod2Bin :: NumBin -> [Int]
-- mod2Bin [] = []
-- mod2Bin [Cero] = [mod 0 2]
-- mod2Bin [Uno] = [mod 1 2]
-- mod2Bin (x:xs) = modBin x : mod2Bin xs