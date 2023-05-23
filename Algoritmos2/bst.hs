data BST a = Empty | Node a (BST a) (BST a) deriving Show

minimum' :: BST a -> a
minimum' Empty = error "Arbol vacio."
minimum' (Node a Empty right) = a
minimum' (Node a left _) = minimum' left

maximum' :: BST a -> a
maximum' Empty = error "Arbol vacio."
maximum' (Node a left Empty) = a
maximum' (Node a left right) = maximum' right

checkBST :: (Eq a) => BST a -> Bool
checkBST Empty = True
checkBST (Node a left right)
    | minimum' left == minimum' (Node a left right) && maximum' right == maximum' (Node a left right) = True
    | otherwise = False

member :: (Ord a) => BST a -> a -> Bool
member Empty _ = False
member (Node a left right) x
    | x == a = True
    | x > a = member right x
    | otherwise = member left x

insert :: (Ord a) => a -> BST a -> BST a
insert x Empty = Node x Empty Empty
insert x (Node a left right)
    | x > a = Node a left (insert x right)
    | otherwise = Node a (insert x left) right

delete :: (Ord a) => a -> BST a -> BST a
delete _ Empty = Empty
delete x (Node a Empty Empty)
    | x == a = Empty
    | otherwise = Node a Empty Empty
delete x (Node a Empty right)
    | x == a = right
    | x > a = delete x right
    | otherwise = Node a Empty right
delete x (Node a left Empty)
    | x == a = left
    | x < a = delete x left
    | otherwise = Node a left Empty
delete x (Node a left right)
    | x < a = delete x left
    | x > a = delete x right
    | x == a = Node (minimum' right) left (delete (minimum' right) right)