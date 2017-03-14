--University of Central Florida
--COP4020: Spring 2017
--Group: That Rushing Water Sound You Hear in the Walls of CB2

module InfSet where

fromFunc :: (a -> Bool) -> (Set a)
unionSet :: Set a -> Set a -> Set a
intersectSet :: Set a -> Set a -> Set a
inSet :: a -> Set a -> Bool
complementSet :: Set a -> Set a

-- define the type (Set a) as one of the following and then...

--type Set a = -- ...
-- or perhaps something like --
data Set a = Set (a->Bool)-- ...

-- Write your code below for the operations declared above...
fromFunc f = (Set f)
unionSet (Set f) (Set g) = Set (\x->f x || g x)
intersectSet (Set f) (Set g) = Set (\x->f x && g x)
inSet x (Set f) = f x
complementSet (Set f) = Set (not.f) 