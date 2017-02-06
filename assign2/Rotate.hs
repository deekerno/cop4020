--University of Central Florida
--COP4020: Spring 2017
--Group: That Rushing Water Sound You Hear in the Walls of CB2

module Rotate where
import Amount

rotate :: Amount -> (a,a,a,a) -> (a,a,a,a)

rotate amt (w,x,y,z) = case amt of
	Zero -> (w,x,y,z)
	One -> (z,w,x,y)
	Two -> (y,z,w,x)
	Three -> (x,y,z,w)