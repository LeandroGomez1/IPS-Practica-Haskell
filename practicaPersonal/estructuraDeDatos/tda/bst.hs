module Bst (Tree, treeInsert, treeElem) where

    data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show)

    singleton :: a -> Tree a
    singleton x = Node x EmptyTree EmptyTree

    treeInsert :: (Ord a) => a -> Tree a -> Tree a
    treeInsert x EmptyTree = singleton x
    treeInsert x (Node root left right)
        | x == root = Node x left right
        | x < root = Node root (treeInsert x left) right
        | otherwise = Node root left (treeInsert x right)

    treeElem :: (Ord a) => a -> Tree a -> Bool
    treeElem x EmptyTree = False
    treeElem x (Node root left right)
        | x == root = True
        | x < root = treeElem x left
        | otherwise = treeElem x right