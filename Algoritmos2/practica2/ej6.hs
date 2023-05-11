data BST a = EmptyTree | Node a (BST a) (BST a) deriving Show

maximum' :: BST a -> a
maximum' EmptyTree = error "Arbol vacio."
maximum' (Node a left EmptyTree) = a
maximum' (Node a left right) = maximum' right