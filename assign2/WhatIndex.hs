module WhatIndex where

whatIndex :: (Eq a) => a -> [a] -> Integer
whatIndex  sought xs = whatIndexIter sought xs 0 (-1)

whatIndexIter :: (Eq a) => a -> [a] -> Integer -> Integer -> Integer
whatIndexIter sought [] acc pos = pos
whatIndexIter sought (x:xs) acc pos = if (sought == x && pos == (-1))
                                      then whatIndexIter sought xs (acc+1) acc 
                                      else whatIndexIter sought xs (acc+1) pos
