type Linea = (Int, [Char])

vacia :: Linea
vacia = (0, [])

moverIzq :: Linea -> Linea
moverIzq (0, cs) = (0, cs)
moverIzq (p, cs) = (p-1, cs)

moverDer :: Linea -> Linea
moverDer (p, cs)
    | p == length cs = (p, cs)
    | otherwise = (p+1, cs)

moverIni :: Linea -> Linea
moverIni (_,cs) = (0,cs)

moverFin :: Linea -> Linea
moverFin (_, cs) = (length cs, cs)

insertar :: Char -> Linea -> Linea
insertar c (p,[]) = (p+1, [c])
insertar c (p,xs) = (p+1, take p xs ++ [c] ++ drop p xs)

borrar :: Linea -> Linea
borrar (p,[]) = (p, [])
borrar (p, xs) = (p-1, take (p-1) xs ++ drop p xs)

