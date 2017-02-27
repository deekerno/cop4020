module MapInside where

mapInside :: (a->b) -> [[a]] -> [[b]]
mapInside f xs = [map f x | x <- xs]
