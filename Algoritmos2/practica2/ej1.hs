data Color = Color {
    red :: Int 
    ,green :: Int
    ,blue :: Int
} deriving (Show)

mezclar :: Color -> Color -> Color
mezclar Color {red = r1, green = g1, blue = b1} Color {red = r2, green = g2, blue = b2} = 
    Color {red = div (r1 + r2) 2, green = div (g1 + g2) 2, blue = div (b1 + b2) 2}

mezclar' :: Color -> Color -> Color
mezclar' (Color r1 g1 b1) (Color r2 g2 b2) = Color (div (r1 + r2) 2) (div (g1 + g2) 2) (div (b1 + b2) 2)