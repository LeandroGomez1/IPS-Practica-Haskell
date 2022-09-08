--zip ej:
--- funcion zip: dadfos dos listas produce una lista de pares

mzip :: [a] -> [b] -> [(a, b)]
mzip _ [] = []
mzip [] _ = []
mzip (x:xs) (y:ys) = (x,y) : mzip xs ys

pares :: [b] -> [(b, b)]
pares [] = []
pares l = mzip l (tail l)