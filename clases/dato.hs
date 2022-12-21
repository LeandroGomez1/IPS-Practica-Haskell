-- Definir un tipo de dato entero con un constructor, a partir de listas, operador de asignacion.
-- Definir para este nuevo tipo de datos la operacion: Igualdad, Suma


data TipoVehiculo = Moto | Auto | Camion deriving (Eq, Show)
data TipoCaja = Manual | Secuencial | Automatica deriving (Eq, Show)
data TipoTraccion = FWD | RWD | AWD deriving (Eq, Show)
data TipoMotor = Nafta | Diesel | Electrico | Hibrido deriving (Eq, Show)
data PosicionCilindros = V | Linea | Boxer | W | Baterias | Wankel deriving (Eq, Show)
data Vehiculo = Ve {marca:: [Char], modelo :: [Char], año :: Int, motor :: TipoMotor, posCil :: PosicionCilindros, cantCil :: Int, caja :: TipoCaja, traccion :: TipoTraccion, tipo :: TipoVehiculo, ejes :: Int, cilindrada :: Int, potencia :: Int} deriving (Eq, Show)

setV :: [Char] -> [Char] -> Int -> TipoMotor -> PosicionCilindros -> Int -> TipoCaja -> TipoTraccion -> TipoVehiculo -> Int -> Int -> Int -> Vehiculo
setV marc mod ano mot pos cil ca ta t e cc p = Ve {marca = marc, modelo = mod, año = ano, motor = mot, posCil = pos, cantCil = cil, caja = ca, traccion = ta, tipo = t, ejes = e, cilindrada = cc, potencia = p}

getMarca :: Vehiculo -> String
getMarca = marca
getModelo :: Vehiculo -> String
getModelo = modelo
getAño :: Vehiculo -> Int
getAño = año
getMotor :: Vehiculo -> TipoMotor
getMotor = motor
getPosCilindros :: Vehiculo -> PosicionCilindros
getPosCilindros = posCil
getCantCil :: Vehiculo -> Int
getCantCil = cantCil
getCaja :: Vehiculo -> TipoCaja
getCaja = caja
getTraccion :: Vehiculo -> TipoTraccion
getTraccion = traccion
getTipo :: Vehiculo -> TipoVehiculo
getTipo = tipo
getEjes :: Vehiculo -> Int
getEjes = ejes
getCil :: Vehiculo -> Int
getCil = cilindrada
getHP :: Vehiculo -> Int
getHP = potencia