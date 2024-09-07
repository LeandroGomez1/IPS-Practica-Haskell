data CList a = EmptyCL | CUnit a | Consnoc a (CList a) a deriving Show

headCL :: CList a -> a
headCL EmptyCL = error "Lista vacia."
headCL (CUnit x) = x
headCL (Consnoc a b c) = a

tailCL :: CList a -> CList a
tailCL EmptyCL = error "Lista vacia."
tailCL (CUnit a) = EmptyCL
tailCL (Consnoc a EmptyCL c) = CUnit c
tailCL (Consnoc a b c) = Consnoc (headCL b) (tailCL b) c

isEmptyCL :: CList a -> Bool
isEmptyCL EmptyCL = True
isEmptyCL _ = False

isCUnit :: CList a -> Bool
isCUnit (CUnit a) = True
isCUnit _ = False

reverseCL :: CList a -> CList a
reverseCL EmptyCL = EmptyCL
reverseCL (CUnit a) = CUnit a
reverseCL (Consnoc a b c) = Consnoc c (reverseCL b) a

addFirstCL :: a -> CList a -> CList a
addFirstCL e EmptyCL = CUnit e
addFirstCL e (CUnit a) = Consnoc e EmptyCL a
addFirstCL e (Consnoc a b c) = Consnoc e (addFirstCL a b) c

addLastCL :: CList a -> a -> CList a
addLastCL EmptyCL e = CUnit e
addLastCL (CUnit a) e = Consnoc a EmptyCL e
addLastCL (Consnoc a b c) e = Consnoc a (addLastCL b c) e

cons :: a -> CList a -> CList a
cons e EmptyCL = CUnit e
cons e (CUnit a) = Consnoc e EmptyCL a
cons e (Consnoc a b c) = Consnoc e (cons a b) c

initsCL :: CList a -> CList (CList a)
initsCL EmptyCL = CUnit EmptyCL
initsCL (CUnit a) = Consnoc EmptyCL EmptyCL (CUnit a)
initsCL (Consnoc a b c) = Consnoc EmptyCL (initsCL (cons a b)) (Consnoc a b c)

snoc :: CList a -> a -> CList a
snoc EmptyCL a = CUnit a
snoc (CUnit a) b = Consnoc a EmptyCL b
snoc (Consnoc a b c) e = Consnoc a (snoc b c) e

lastsCL :: CList a -> CList (CList a)
lastsCL EmptyCL = EmptyCL
lastsCL (CUnit a) = Consnoc (CUnit a) EmptyCL EmptyCL
lastsCL (Consnoc a b c) = Consnoc (Consnoc a b c) (lastsCL (snoc b c)) EmptyCL

concatCL :: CList (CList a) -> CList a
concatCL EmptyCL = EmptyCL
concatCL (CUnit a) = a
concatCL (Consnoc a b c) = concatCL (snoc b c)
