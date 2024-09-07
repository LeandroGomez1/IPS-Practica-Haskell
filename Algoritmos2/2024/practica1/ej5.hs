map' :: (a -> b) -> [a] -> [b]
map' f = foldr (\x xs -> f x : xs) []

filter' :: (a -> Bool) -> [a] -> [a]
filter' p = foldr (\x xs -> if p x then x : xs else xs) []

unzip' :: [(a,b)] -> ([a], [b])
unzip' = foldr (\(x, y) (xs, ys) -> (x : xs, y : ys)) ([], [])

pair2List :: (a,[b]) -> [(a,b)]
pair2List (x, ys) = foldr (\y acc -> (x, y) : acc) [] ys

maxSec :: [(Int, Int)] -> (Int, Int)
maxSec = foldr maxL (0, 0)
  where
    maxL (x1, y1) (x2, y2) = if y1 - x1 > y2 - x2 then (x1, y1) else (x2, y2)