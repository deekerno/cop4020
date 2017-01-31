--University of Central Florida
--COP4020: Spring 2017
--Group: That Rushing Water Sound You Hear in the Walls of CB2

module Add10List where
add10_list_rec :: [Integer] -> [Integer]
add10_list_comp :: [Integer] -> [Integer]

add10_list_comp xs = [ x+10 | x <- xs]

add10_list_rec [] = []
add10_list_rec (x:xs) = (x+10) : (add10_list_rec xs)