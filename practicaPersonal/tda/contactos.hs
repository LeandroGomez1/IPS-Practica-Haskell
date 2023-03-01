type NumCel = String
type Nombre = String
type Contacto = (Nombre, NumCel)
type LibroContactos = [Contacto]

isAgended :: LibroContactos -> Contacto -> Bool
isAgended libro contacto = contacto `elem` libro