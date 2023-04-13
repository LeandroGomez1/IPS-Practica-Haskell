mZip :: [a] -> [b] -> [(a,b)]
mZip [] l2 = []
mZip l1 [] = []
mZip (x:xs) (y:ys) =  (x,y) : mZip xs ys