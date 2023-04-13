myLast :: [a] -> a
myLast [] = error "Lista vacia"
myLast [x] = x
myLast (x:xs) = myLast xs

myButLast :: [a] -> a
myButLast [] = error "Lista vacia"
myButLast [x] = error "Lista con elementos insuficientes"
myButLast [x,_] = x
myButLast (x:xs) = myButLast xs

elementAt :: [a] -> Int -> a
elementAt [] _ = error "Lista vacia"
elementAt (x:_) 1 = x
elementAt (x:xs) k = elementAt xs (k - 1)

myLength :: [a] -> Int
myLength [] = 0
myLength [x] = 1
myLength (x:xs) = 1 + myLength xs

myReverse :: [a] -> [a]
myReverse [] = []
myReverse [x] = [x]
myReverse [x,y] = [y,x]
myReverse (x:xs) = myReverse xs ++ [x]

isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = error "Lista vacia"
isPalindrome [x] = True
isPalindrome list
    | list == myReverse list = True
    | otherwise = False

data NestedList a = Elem a | List [NestedList a]
flatten :: NestedList a -> [a]
flatten (Elem a) = [a]
flatten (List (x:xs)) = flatten x ++ flatten (List xs)
flatten (List []) = []

isRepeated :: Eq a => a -> [a] -> Bool
isRepeated _ [] = False
isRepeated a (x:xs)
    | a == x = True
    | otherwise = isRepeated a xs

compress1 :: Eq a => [a] -> [a]
compress1 [] = []
compress1 [x] = [x]
compress1 (x:xs)
    | not (isRepeated x xs) = x : compress1 xs
    | otherwise = compress1 xs

compress2 :: Eq a => [a] -> [a]
compress2 [] = []
compress2 [x] = [x]
compress2 (x:(y:ys))
    | x == y = compress2 (y:ys)
    | otherwise = x : compress2 (y:ys)


pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack [x] = [[x]]
pack (x:xs) = if x `elem` head (pack xs)
              then (x:head (pack xs)):tail (pack xs)
              else [x]:pack xs

counter :: Eq a => a -> [a] -> Int
counter _ [] = 0
counter a (x:xs)
    | a == x = 1 + counter a xs
    | otherwise = counter a xs

encode :: Eq a => [a] -> [(Int, a)]
encode [] = []
encode (x:xs) = (counter x xs , x) : encode xs