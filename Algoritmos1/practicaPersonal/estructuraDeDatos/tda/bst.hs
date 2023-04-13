data ArbolBin a = Empty | Node a (ArbolBin a) (ArbolBin a) deriving (Show)

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

isInTree :: (Ord a) => a -> ArbolBin a -> Bool
isInTree _ Empty = False
isInTree x (Node a left right)
    | x == a = True
    | x < a = isInTree x left
    | otherwise = isInTree x right

delTree :: (Ord a) => a -> ArbolBin a -> ArbolBin a
delTree _ Empty = Empty
delTree x (Node a left Empty)
    | x == a = left
delTree x (Node a Empty right)
    | x == a = right
delTree x (Node a left right)
    | x < a = Node a (delTree x left) right
    | x > a = Node a left (delTree x right)
    | otherwise = Node newValue left newRight
        where
            (newValue,newRight) = minTree right

minTree :: (Ord a) => ArbolBin a -> (a, ArbolBin a)
minTree Empty = error "Arbol vacio"
minTree (Node a Empty right) = (a, right)
minTree (Node a left right) = (newValue, Node a newLeft right)
    where
        (newValue, newLeft) = minTree left