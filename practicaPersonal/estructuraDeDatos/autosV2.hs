-- Definir un tipo de dato entero con un constructor, a partir de listas, operador de asignacion.
-- Definir para este nuevo tipo de datos la operacion: Igualdad, Suma

type Marca = String
type Modelo = String
type Año = Int
type Cilindros = Int
type Ejes = Int
type Cilindrada = Float
type Potencia = Int

data TipoVehiculo = Moto | Auto | Camion deriving (Eq, Show)
data TipoCaja = Manual | Secuencial | Automatica deriving (Eq, Show)
data TipoTraccion = FWD | RWD | AWD deriving (Eq, Show)
data TipoMotor = Nafta | Diesel | Electrico | Hibrido deriving (Eq, Show)
data PosicionCilindros = V | Linea | Boxer | W | Baterias | Wankel deriving (Eq, Show)
data Vehiculo = Vehiculo {
    marca :: Marca,
    modelo :: Modelo,
    año :: Año,
    motor :: TipoMotor,
    posCil :: PosicionCilindros,
    cantCil :: Cilindros,
    caja :: TipoCaja,
    traccion :: TipoTraccion,
    tipo :: TipoVehiculo,
    ejes :: Ejes,
    cilindrada :: Cilindrada,
    potencia :: Potencia
    } deriving (Eq, Show)


getAuto :: Vehiculo -> String
getAuto Vehiculo {marca = marc, modelo = mod, año = ano, motor = mot, posCil = pos, cantCil = cil, 
caja = ca, traccion = ta, tipo = t, ejes = e, cilindrada = cc, potencia = p} = 
    "Su vehiculo es un " ++ marc ++ " " ++ mod ++ " " ++ show ano ++ " " ++ show pos ++ show cil ++ " " ++ show cc ++ " "
    ++ show mot ++ " " ++ show p ++ "HP " ++ show ca ++ " " ++ show ta ++ " - " ++ show t ++ " " ++ show e ++ "Ejes"