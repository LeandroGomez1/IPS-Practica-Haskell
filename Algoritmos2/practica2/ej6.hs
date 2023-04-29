data BST a = EmptyBST | BST a (BST a) (BST a)

maximum :: BST a -> a
maximum EmptyBST = error "Arbol vacio."
maximum (BST x izq EmptyBST) = x
maximum (BST x izq der) = maximum (BST x EmptyBST der)