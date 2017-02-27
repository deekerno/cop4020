module MapInside where
import Data.Char

mapInside :: (a -> b) -> [[a]] -> [[b]]

mapInside f [] = []
mapInside f (l:lst) = [(map f l)] ++ mapInside f lst
