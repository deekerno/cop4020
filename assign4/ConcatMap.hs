--University of Central Florida
--COP4020: Spring 2017
--Group: That Rushing Water Sound You Hear in the Walls of CB2

module ConcatMap where
import Prelude hiding (concatMap)

concatMap :: (a -> [b]) -> [a] -> [b]
concatMap f ls = foldr (\x y -> (f x) ++ y) [] ls