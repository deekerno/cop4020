module Rank where
import Data.List

rank :: (Ord a) => [a] -> [(Int, a)]
rank [] = []
rank lst = sortEm (sort lst) 1 1

sortEm (l:lst) pos repeatCount = (pos,l): rankEm lst pos repeatCount l

rankEm [] pos repeatCount prev = []
rankEm (x:xs) pos repeatCount prev = if(x==prev)
                                     then (pos, x): rankEm xs pos (repeatCount+1) x
                                     else ((pos+repeatCount),x): rankEm xs (pos+repeatCount) 1 x