-- data Persona = Persona String String Int Float String String deriving (Show)

data Helado = Chocolate | Vainilla | Frutilla deriving (Show, Eq)
data Persona = Persona { nombre :: String
                        ,apellido :: String
                        ,edad :: Int
                        ,altura :: Float
                        ,celular :: String
                        ,heladoFav :: Helado
                        } deriving (Show, Eq)

getPerson :: Persona -> String
getPerson Persona {nombre = n, apellido = a, edad = e, altura = h, celular = num, heladoFav = i} =
    n ++ " " ++ a ++ " tiene " ++ show e ++ " anios, " ++ "mide " ++ show h ++ "m, " ++ "su celular es " ++ num ++
    " y le gusta el helado de sabor " ++ show i