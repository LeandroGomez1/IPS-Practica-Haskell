data BST a = EmptyTree | Node a (BST a) (BST a) deriving Show

minimum' :: BST a -> a
minimum' EmptyTree = error "Arbol vacio."
minimum' (Node a EmptyTree right) = a
minimum' (Node a left _) = minimum' left

maximum' :: BST a -> a
maximum' EmptyTree = error "Arbol vacio."
maximum' (Node a left EmptyTree) = a
maximum' (Node a left right) = maximum' right

checkBST :: (Eq a) => BST a -> Bool
checkBST EmptyTree = True
checkBST (Node a left right)
    | minimum' left == minimum' (Node a left right) && maximum' right == maximum' (Node a left right) = True
    | otherwise = False
