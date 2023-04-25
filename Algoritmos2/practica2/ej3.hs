data CList a = EmptyCL | CUnit a | Consnoc a (CList a) a

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

