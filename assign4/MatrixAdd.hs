--University of Central Florida
--COP4020: Spring 2017
--Group: That Rushing Water Sound You Hear in the Walls of CB2

module MatrixAdd where
import Matrix
import MatrixInstances

sameShape :: (Matrix a) -> (Matrix a) -> Bool
pointwiseApply :: (a -> a -> b) -> (Matrix a) -> (Matrix a) -> (Matrix b)
add :: (Num a) => (Matrix a) -> (Matrix a) -> (Matrix a)
sub :: (Num a) => (Matrix a) -> (Matrix a) -> (Matrix a)

-- without changing the above, implement the declared functions.
sameShape one two = (numRows one == numRows two && numColumns one == numColumns two)

pointwiseApply op one two = if(sameShape one two)
                            then fromRule (numRows one, numColumns one) (\(i,j)-> ((at one (i,j)) `op` (at two (i,j))) )
                            else error "The matrices are not the same shape!"

add one two = pointwiseApply (+) one two

sub one two = pointwiseApply (-) one two