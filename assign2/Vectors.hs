--University of Central Florida
--COP4020: Spring 2017
--Group: That Rushing Water Sound You Hear in the Walls of CB2
module Vectors where

-- Vectors are represented by finite lists of coordinate values.
type Vector = [Double]
scale :: Double -> Vector -> Vector
add :: Vector -> Vector -> Vector
dot :: Vector -> Vector -> Double

-- scale returns the Vector with each coordinate multiplied by the Double
scale y v = map (*y) v

-- add returns a Vector that is the pointwise sum of the two arguments
add a b = zipWith (+) a b

-- dot returns the dot product of the Vector arguments
dot a b = sum (zipWith (*) a b)