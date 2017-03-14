--University of Central Florida
--COP4020: Spring 2017
--Group: That Rushing Water Sound You Hear in the Walls of CB2

module Matrix (Matrix, fillWith, fromRule, numRows, numColumns, 
               at, mtranspose, mmap) where

-- newtype is like "data", but has some efficiency advantages
newtype Matrix a = Mat ((Int,Int),(Int,Int) -> a)

fillWith :: (Int,Int) -> a -> (Matrix a)
fromRule :: (Int,Int) -> ((Int,Int) -> a) -> (Matrix a)
numRows :: (Matrix a) -> Int
numColumns :: (Matrix a) -> Int
at :: (Matrix a) -> (Int, Int) -> a
mtranspose :: (Matrix a) -> (Matrix a)
mmap :: (a -> b) -> (Matrix a) -> (Matrix b)

-- Without changing what is above, implement the above functions.
fillWith (x,y) val = Mat ((x,y), (\(x,y)->val))

fromRule (x,y) funct = Mat ((x,y), funct)

numRows (Mat((x,y),funct)) = x

numColumns (Mat((x,y),funct)) = y

at (Mat((x,y),funct)) (v,w) = funct (v,w)

mtranspose (Mat((x,y),funct)) = Mat((y,x), \(y,x)->funct (x,y))

mmap funct1 (Mat((x,y),funct)) = Mat((x,y), funct1.funct)