module LRParser where

data Tree d = Leaf String | Node d [Tree]
