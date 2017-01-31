--University of Central Florida
--COP4020: Spring 2017
--Group: That Rushing Water Sound You Hear in the Walls of CB2

module DeleteNth where
deleteNth :: (Eq a) => Int -> a -> [a] -> [a]

deleteNth z y [] = []
deleteNth z y (x:xs) = if x==y && z > 1
			then [x] ++ deleteNth (z-1) y xs
			else if x==y && z==1
				then deleteNth (z-1) y xs
				else [x] ++ deleteNth z y xs