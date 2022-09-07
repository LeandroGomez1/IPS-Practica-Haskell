--Invertir una lista

invertir [] = []
invertir (x:xs) = invertir xs ++ [x]
