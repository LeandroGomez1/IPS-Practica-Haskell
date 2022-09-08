fact :: (Eq p, Num p) => p -> p
fact 0 = 1
fact n = n * fact (n - 1)
