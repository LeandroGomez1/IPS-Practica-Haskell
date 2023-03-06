-- module Pila (Stack, push, pop, top, getEmptyStack, isStackEmpty) where

    newtype Stack a = Stk [a] deriving (Show)

    getEmptyStack :: Stack a
    getEmptyStack = Stk []

    push :: a -> Stack a -> Stack a
    push x (Stk xs) = Stk (x:xs)

    pop :: Stack a -> Stack a
    pop (Stk []) = error  "Lista vacia"
    pop (Stk (x:xs)) = Stk xs

    top :: Stack a -> a
    top (Stk []) = error  "Lista vacia" 
    top (Stk (x:xs)) = x

    isStackEmpty :: Stack a -> Bool
    isStackEmpty (Stk []) = True
    isStackEmpty (Stk _) = False