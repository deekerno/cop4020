module BinaryRelationOps where
import BinaryRelation

--problem 3a
project1 :: (BinaryRelation a b) -> [a]
project1 relationList = [x | (x,y)<-relationList]

--problem 3b
project2 :: (BinaryRelation a b) -> [b]
project2 relationList = [y | (x,y)<-relationList]

--problem 3c
select :: ((a,b) -> Bool) -> (BinaryRelation a b) -> (BinaryRelation a b)
select f [] = []
select f ((x,y):relationList) = if (f(x,y))
                                then (x,y):(select f relationList)
                                else select f relationList

--problem 3d
compose :: Eq b => (BinaryRelation a b) -> (BinaryRelation b c) -> (BinaryRelation a c)
compose [] _ = []
compose _ [] = []
compose ((x,y):list1) list2 = [(x,z)|(w,z)<-list2, y==w] ++ compose list1 list2