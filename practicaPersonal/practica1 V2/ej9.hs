data Directions = Norte | Sur | Este | Oeste
move :: (Int,Int) -> Directions -> (Int,Int)
move (x,y) Norte = (x, y+1)
move (x,y) Sur = (x, y-1)
move (x,y) Oeste = (x+1, y)
move (x,y) Este = (x-1, y)
