data Arb = E | H Int | N Arb Arb deriving(Show)
data Cmd = L | R deriving(Show)

selec::[Cmd] -> Arb -> Arb
selec _ E = E
selec [] t = t
selec [L] (N a b) = a
selec [R] (N a b) = b
selec _ (H n) = H n
selec (x:xs) t = selec xs (selec [x] t)

enum :: Arb -> [[Cmd]]
enum E = []
enum (N a (H n)) = [R] : enum a
enum (N (H n) a) = [L] : enum a
enum (N a b) = enum a ++ enum b