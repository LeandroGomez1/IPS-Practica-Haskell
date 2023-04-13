data GenTree a = EmptyG | NodeG a [GenTree a]
data BinTree a = EmptyB | NodeB (BinTree a) a (BinTree a)

