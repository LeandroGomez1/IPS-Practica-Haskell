{-2. Consideremos un editor de l´ıneas simple. Supongamos que una L´{nea es una secuencia de
caracteres c1; c2; : : : ; cn junto con una posici´on p, siendo 0 6 p 6 n, llamada cursor (consideraremos
al cursor a la izquierda de un caracter que ser´a borrado o insertado, es decir como el cursor de la
mayor´ıa de los editores). Se requieren las siguientes operaciones sobre l´ıneas:
vac´{a :: L´{nea
moverIzq :: L´{nea ! L´{nea
moverDer :: L´{nea ! L´{nea
moverIni :: L´{nea ! L´{nea
moverFin :: L´{nea ! L´{nea
insertar :: Char ! L´{nea ! L´{nea
borrar :: L´{nea ! L´{nea
La descripci´on informal es la siguiente: (1) la constante vac´{a denota la l´ınea vac´ıa, (2) la operaci´on moverIzq mueve el cursor una posici´on a la izquierda (siempre que ellos sea posible), (3)
an´alogamente para moverDer, (4) moverIni mueve el cursor al comienzo de la l´ınea, (5) moverFin
mueve el cursor al final de la l´ınea, (6) la operaci´on borrar elimina el caracterer que se encuentra
a la izquierda del cursor, (7) insertar agrega un caracter en el lugar donde se encontraba el cursor
y lo mueve una posici´on a la derecha.
Definir un tipo de datos L´{nea e implementar las operaciones dadas.-}


type Cursor = Int
type Linea = ([Char], Cursor)

vacia :: Linea
vacia = ([], 0)

moverIzq :: Linea -> Linea
moverIzq (c,p)
    | p > 0 = (c, p-1)
    | otherwise = error "No se puede mover el cursor hacia la izquierda."

moverDer :: Linea -> Linea
moverDer (c,p)
    | p < length c = (c, p+1)
    | otherwise = error "No se puede mover el cursor hacia la derecha."

moverIni :: Linea -> Linea
moverIni (c,_) = (c,0)

moverFin :: Linea -> Linea
moverFin (c,_) = (c, length c)

insertar :: Char -> Linea -> Linea
insertar x (c,p) = (x : c, p + 1)

borrar :: Linea -> Linea
borrar (c,p) = (take (length c - 1) c, p-1)