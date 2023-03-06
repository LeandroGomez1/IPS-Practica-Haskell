module Pila (Stack, pop, push, top, getEmptyStack, isStackEmpty) where

    data Stack a = EmptyStack | Stk a (Stack a) deriving Show

    getEmptyStack :: Stack a
    getEmptyStack = EmptyStack

    push :: a -> Stack a -> Stack a
    push x EmptyStack = Stk x EmptyStack
    push x s = Stk x s

    pop :: Stack a -> Stack a
    pop EmptyStack = error "Lista vacia"
    pop (Stk _ stack') = stack'

    top :: Stack a -> a
    top EmptyStack = error "Lista vacia"
    top (Stk x _) = x 

    isStackEmpty :: Stack a -> Bool
    isStackEmpty EmptyStack = True
    isStackEmpty (Stk _ _) = False
