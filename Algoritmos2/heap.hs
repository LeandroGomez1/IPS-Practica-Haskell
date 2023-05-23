type Rank = Int
data Heap a = Empty | Node Rank a (Heap a) (Heap a)

merge :: (Ord a) => Heap a -> Heap a -> Heap a
merge Empty h = h
merge h Empty = h
merge h1@(Node _ x a1 b1) h2@(Node _ y a2 b2)
    | x <= y = makeH x a1 (merge b1 h2)
    | otherwise = makeH y a2 (merge b2 h2)

rank :: Heap a -> Rank
rank Empty = 0
rank (Node r _ _ _) = r

makeH :: a -> Heap a -> Heap a -> Heap a
makeH x a b
    | rank a >= rank b = Node (rank b+1) x a b
    | otherwise = Node (rank a+1) x b a

insert :: Ord a => a -> Heap a -> Heap a
insert x h = merge (Node 1 x Empty Empty) h

findMin :: Ord a => Heap a -> a
findMin (Node _ x a b) = x

deleteMin :: Ord a => Heap a -> Heap a
deleteMin (Node _ x a b) = merge a b