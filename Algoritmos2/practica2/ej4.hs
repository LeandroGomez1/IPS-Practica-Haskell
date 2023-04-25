data Aexp = Num Int | Prod Aexp Aexp | Div Aexp Aexp

eval :: Aexp -> Int
eval (Num a) = a
eval (Prod a1 a2) = eval a1 * eval a2
eval (Div a1 a2) = eval a1 `div` eval a2

seval :: Aexp -> Maybe Int
seval (Num a) = Just a