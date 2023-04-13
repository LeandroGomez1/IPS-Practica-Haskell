divisors :: Int -> [Int]
divisors x = [y | y <- [1..x], x `mod` y == 0]

--------------------------------------------------------------
matches :: Int -> [Int] -> [Int]
matches _ [] = []
matches num lista = [x | x <- lista, x == num]

--------------------------------------------------------------
unique :: [Int] -> [Int]
unique [] = []
unique xs = [x | (x,y) <- zip xs [0..], x `notElem` take y xs]

--------------------------------------------------------------
cuadrupla :: Int -> Int -> Int -> Int -> [(Int,Int,Int,Int)]
cuadrupla a b c d = [ (a,b,c,d) | a > 0 && a <= 100, b > 0 && b <= 100, c > 0 && c <= 100, d > 0 && d <= 100, a^2 + b^2 == c^2 + d^2]