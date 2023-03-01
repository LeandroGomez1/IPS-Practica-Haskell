data Vector a = Vector a a a deriving (Show)

vplus :: (Num a) => Vector a -> Vector a -> Vector a
vplus (Vector a b c) (Vector i j k) = Vector (a + i) (b + j) (c + k)

dotProd :: (Num a) => Vector a -> Vector a -> a
dotProd (Vector a b c) (Vector i j k) = a*i + b*j + i*k

vmult :: (Num a) => Vector a -> a -> Vector a
vmult (Vector a b c) n = Vector (a*n) (b*n) (c*n)