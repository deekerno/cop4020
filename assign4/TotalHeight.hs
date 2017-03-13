--University of Central Florida
--COP4020: Spring 2017
--Group: That Rushing Water Sound You Hear in the Walls of CB2

module TotalHeight where
import FoldWindowLayout
import WindowLayout

totalHeight :: WindowLayout -> Int
totalHeight wl = foldWindowLayout(\(s, w, h) -> h)
                                 (\r -> if r == []
                                        then 0
                                        else maximum r)
                                 (\r -> if r == []
                                        then 0
                                        else sum r)
                                 wl