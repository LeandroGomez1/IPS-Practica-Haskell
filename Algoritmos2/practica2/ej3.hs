data CList a = EmptyCL | CUnit a | Consnoc a (CList a) a deriving Show

headCL :: CList a -> a
headCL EmptyCL = error "Lista vacia."
headCL (CUnit x) = x
headCL (Consnoc a b c) = a

tailCL :: CList a -> CList a
tailCL EmptyCL = error "Lista vacia."
tailCL (CUnit a) = EmptyCL
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
addFirstCL e (Consnoc a l c) = Consnoc e (addFirstCL a l) c

addLastCL :: CList a -> a -> CList a
addLastCL EmptyCL e = CUnit e
addLastCL (CUnit a) e = Consnoc a EmptyCL e
addLastCL (Consnoc a l c) e = Consnoc a (addLastCL l c) e

{-
initsCL :: CList a -> CList a
initsCL EmptyCL = EmptyCL
initsCL (CUnit a) = CUnit a
initsCL  (Consnoc a b c) = 
-}

{-
lastsCL :: CList a -> CList a
lastsCL EmptyCL = EmptyCL
lastsCL (CUnit a) = CUnit a
lastsCL  (Consnoc a b c) = 
-}

{-
concatCL :: CList (CList a) -> CList a
concatCL EmptyCL = EmptyCL
-}