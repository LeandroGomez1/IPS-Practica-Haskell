data Nat = Cero | Succ Nat deriving(Show)

int2Nat :: Int -> Nat
int2Nat 0 = Cero
int2Nat n = Succ (int2Nat (n-1))

suma :: Nat -> Nat -> Nat
suma Cero Cero = Cero
suma Cero n = n
suma (Succ n1) n2 = Succ (suma n1 n2)

nat2Int :: Nat -> Int
nat2Int Cero = 0
nat2Int (Succ n1) = 1 + nat2Int n1