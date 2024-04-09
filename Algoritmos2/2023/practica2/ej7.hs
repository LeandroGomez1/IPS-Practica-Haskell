data BST a = EmptyTree | Node a (BST a) (BST a) deriving Show

member :: (Eq a) => a -> a -> Bool
member x a
    | x == a = True

recorre :: (Ord a) => BST a -> a -> Bool
recorre EmptyTree _ = False
recorre (Node a EmptyTree EmptyTree) x = member x a
recorre (Node a left right) x
    | x > a = recorre right x
    | otherwise = recorre left x