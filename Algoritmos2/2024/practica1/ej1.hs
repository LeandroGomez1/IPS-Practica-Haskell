borrarUltimo :: [a] -> [a]
borrarUltimo [] = []
borrarUltimo [x] = []
borrarUltimo (x:xs) = x : borrarUltimo xs
-------------------------------------------
collect :: [Char] -> [([Char], Int)] -> [Int]
collect _ [] = []
collect a ((k, v) : xs)
    | a == k = v : collect a xs
    | otherwise = collect a xs
-------------------------------------------
serie :: [a] -> [[a]]
serie [] = []
serie [x] = [[x]]
serie (x:xs) = [] : serie (borrarUltimo (x:xs)) ++ [x:xs]
-------------------------------------------
paresIguales :: Int -> Int -> Int -> Int -> Bool
paresIguales w x y z
    | w == x && y == z = True
    | w == y && x == z = True
    | w == z && x == y = True
    | otherwise = False

-------------------------------------------
isosceles :: Int -> Int -> Int -> Bool
isosceles l1 l2 l3
    | l1 == l2 && l1 /= l3 = True
    | l1 == l3 && l1 /= l2 = True
    | otherwise = False
-------------------------------------------
ror :: Int -> [a] -> [a]
ror n xs = cola n xs ++ cabeza n xs
{- ror 3 [1,2,3,4,5] = cola 3 [1,2,3,4,5] ++ cabeza 3 [1,2,3,4,5]
Resultado Final = [4,5,1,2,3] -}


cabeza :: Int -> [a] -> [a]
cabeza 0 [] = []
cabeza 0 xs = []
cabeza n (x : xs) = x : cabeza (n - 1) xs

{- cabeza 3 [1,2,3,4,5] = 1 : cabeza (3 - 1) [2,3,4,5]
cabeza 2 [2,3,4,5] = 2 : cabeza (2 - 1) [3,4,5]
cabeza 1 [3,4,5] = 3 : cabeza (1 - 1) [4,5]
cabeza 0 [4.5] = []
Resultado Final = (1:(2:(3:[]))) = [1,2,3] -}

cola :: Int -> [a] -> [a]
cola _ [] = []
cola n (x : xs)
    | n <= 0 = x : cola (n - 1) xs
    | otherwise = cola (n - 1) xs

{- cola 3 [1,2,3,4,5]
cola 2 [2,3,4,5]
cola 1 [3,4,5]
cola 0 [4,5] = 4 : (cola (0 - 1) [5])
cola -1 [5] = 5 : (cola (-1 - 1) []))
cola -2 [] = (4 : (5 : []))
Resultado final => [4,5] -}
-------------------------------------------
upto :: Int -> Int -> [Int]
upto n m
    | n <= m = n : upto (n+1) m
    | otherwise = []
-------------------------------------------

eco :: [a] -> [a]
eco [] = []
eco xs = foldr (++) [] (map (\(c,i) -> repite (c,i)) (zip xs [1..]))

repite :: (a, Int) -> [a]
repite (_, 0) = []
repite (c,n) = c : repite (c, n - 1)