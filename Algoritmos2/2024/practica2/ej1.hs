{- 1. El modelo de color RGB es un modelo aditivo que tiene al rojo, verde y azul como colores
primarios. Cualquier otro color se expresa en t´erminos de las proporciones de estos tres colores que
es necesario combinar en forma aditiva para obtenerlo. Dichas proporciones caracterizan a cada
color de manera biun´ıvoca, por lo que usualmente se utilizan estos valores como representaci´on de
un color.
Definir un tipo Color en este modelo y una funci´on mezclar que permita obtener el promedio
componente a componente entre dos colores. -}

type Red = Int
type Green = Int
type Blue = Int
type Color = (Red, Green, Blue)

mezclar :: Color -> Color -> Color
mezclar (r1, g1, b1) (r2, g2, b2) = (div (r1 + r2) 2, div (g1 + g2) 2, div (b1 + b2) 2)