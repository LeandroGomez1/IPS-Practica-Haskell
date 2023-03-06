-- module Cola (Queue, getEmptyQueue, enQueue, deQueue, front, isQueueEmpty) where
    
    newtype Queue a = Que [a] deriving (Show)

    getEmptyQueue :: Queue a
    getEmptyQueue = Que []

    enQueue :: a-> Queue a -> Queue a
    enQueue a (Que []) = Que [a]
    enQueue a (Que (x:xs)) = Que ((x:xs) ++ [a])

    deQueue :: Queue a -> Queue a
    deQueue (Que []) = error "Lista vacia"
    deQueue (Que (x:xs)) = Que xs

    front :: Queue a -> a
    front (Que []) = error "Lista vacia"
    front (Que (x:xs)) = x

    isQueueEmpty :: Queue a -> Bool
    isQueueEmpty (Que []) = True
    isQueueEmpty (Que (x:xs)) = False
