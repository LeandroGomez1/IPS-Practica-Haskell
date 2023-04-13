mFlip :: (a -> b -> c) -> (b -> a -> c)
mFlip f x y = f y x