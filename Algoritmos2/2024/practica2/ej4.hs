data Aexp = Num Int | Prod Aexp Aexp | Div Aexp Aexp

eval :: Aexp -> Int
eval (Num a) = a
eval (Prod a1 a2) = eval a1 * eval a2
eval (Div a1 a2) = eval a1 `div` eval a2

seval :: Aexp -> Maybe Int
seval (Num 0) = Nothing
seval (Num a) = Just a
seval (Div e1 e2) = 
    case seval e1 of
        Nothing -> Nothing
        Just e1 -> case seval e2 of
            Nothing -> Nothing
            Just e2 ->
                if e2 == 0 then Nothing
                else Just (div e1 e2)