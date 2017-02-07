module ApplyToList where
import BinaryRelation


--problem 2a
applyRel :: (Eq k) => k -> (BinaryRelation k v) -> [v]

applyRel x relationList = [v|(k,v)<-relationList, x==k]


--problem 2b
applyToList :: (Eq k) => [k] -> (BinaryRelation k v) -> [v]

applyToList _ [] = []
applyToList [] _ = []
applyToList (y:ys) relationList1 = applyRel y relationList1 ++ applyToList ys relationList1