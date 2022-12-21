data Direction = Norte | Sur | Este | Oeste
move :: (Int, Int) -> Direction -> (Int, Int)
move (x, y) Norte = (x, y + 1)
move (x, y) Sur = (x, y - 1)
move (x, y) Este = (x + 1, y)
move (x, y) Oeste = (x - 1, y)
