invertir :: [a] -> [a]
invertir [] = []
invertir [x] = [x]
invertir (x:xs) = invertir xs ++ [x]