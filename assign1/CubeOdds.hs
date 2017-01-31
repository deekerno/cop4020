--University of Central Florida
--COP4020: Spring 2017
--Group: That Rushing Water Sound You Hear in the Walls of CB2

module CubeOdds where
cubeOdds :: [Integer] -> [Integer]

cubeOdds xs = [ if x `mod` 2 == 1 then x*x*x else x | x <- xs]