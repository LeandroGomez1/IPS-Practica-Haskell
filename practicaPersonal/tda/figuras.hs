type EjeX = Float
type EjeY = Float
type Radio = Float

data Punto = Punto EjeX EjeY deriving (Show)
data Figura = Circulo Punto Radio | Rectangulo Punto Punto deriving (Show)

area :: Figura -> Float
area (Circulo p r) = pi * r^2
area (Rectangulo (Punto x1 x2) (Punto y1 y2)) = abs (x2 - x1) * abs (y2 - y1)