module ListMin where

listMin :: (Ord a) => [a] -> a
listMin (x:xs) = listMinIter xs x

listMinIter :: (Ord a) => [a] -> a -> a
listMinIter [] min' = min'
listMinIter (x:xs) min' = if(x<min')
                          then listMinIter xs x
                          else listMinIter xs min'