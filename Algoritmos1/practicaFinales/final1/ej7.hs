data ArbolBin a = Empty | Node a (ArbolBin a) (ArbolBin a) deriving Show

mkTree :: ArbolBin a
mkTree = Empty

addTree :: (Ord a) => a -> ArbolBin a -> ArbolBin a
addTree x Empty = Node x Empty Empty
addTree x (Node a left right)
    | x == a = Node a left right
    | x < a = Node a (addTree x left) right
    | otherwise = Node a left (addTree x right)

inOrderTree :: (Ord a) => ArbolBin a -> [a]
inOrderTree Empty = []
inOrderTree (Node a left right) = inOrderTree left ++ [a] ++ inOrderTree right