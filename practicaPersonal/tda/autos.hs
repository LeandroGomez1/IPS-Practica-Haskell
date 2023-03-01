data Auto = Auto {
    marca :: String,
    modelo :: String,
    anio :: Int
}   deriving (Show)

getAuto :: Auto -> String
getAuto Auto {marca = marca, modelo = mod, anio = anio} =
    "Este " ++ marca ++ " " ++ mod ++ " " ++ "fue hecho en el " ++ show anio