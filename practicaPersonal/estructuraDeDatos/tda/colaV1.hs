module Cola (Queue, getEmptyQueue, enQueue, deQueue, front, isQueueEmpty) where
    
    data Queue a = EmptyQueue | Que a (Queue a) deriving (Show)

    getEmptyQueue :: Queue a
    getEmptyQueue = EmptyQueue

    enQueue :: a -> Queue a -> Queue a
    enQueue x EmptyQueue = Que x EmptyQueue
    enQueue x s = Que x s

    deQueue :: Queue a -> Queue a
    deQueue EmptyQueue = error "Lista vacia"
    deQueue (Que _ q) = q

    front :: Queue a -> a
    front EmptyQueue = error "Lista vacia"
    front (Que x _) = x

    isQueueEmpty :: Queue a -> Bool
    isQueueEmpty EmptyQueue = True
    isQueueEmpty _ = False