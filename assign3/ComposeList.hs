--University of Central Florida
--COP4020: Spring 2017
--Group: That Rushing Water Sound You Hear in the Walls of CB2

module ComposeList where

composeList :: [(a -> a)] -> (a -> a)

composeList [] a = a
composeList (x:xs) a = x (composeList xs a)