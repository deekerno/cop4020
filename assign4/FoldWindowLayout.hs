--University of Central Florida
--COP4020: Spring 2017
--Group: That Rushing Water Sound You Hear in the Walls of CB2

module FoldWindowLayout where 
import WindowLayout

foldWindowLayout :: ((String, Int, Int) -> r) -> ([r] -> r) -> ([r] -> r) -> WindowLayout -> r

foldWindowLayout wf hf vf (Window {wname=n, width=w, height=h}) = (wf (n, w, h))
foldWindowLayout wf hf vf (Horizontal w) = hf(map(foldWindowLayout wf hf vf) w)
foldWindowLayout wf hf vf (Vertical w) = vf(map(foldWindowLayout wf hf vf) w)