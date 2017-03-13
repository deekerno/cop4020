--University of Central Florida
--COP4020: Spring 2017
--Group: That Rushing Water Sound You Hear in the Walls of CB2

module SplitScreen where
import FoldWindowLayout
import WindowLayout
splitScreen :: String -> WindowLayout -> WindowLayout
splitScreen name wl = foldWindowLayout (\(s,w,h) -> if (s==name)
                                                    then Horizontal(let win = Window{wname = s, width = (w `div` 2), height = h} in [win,win])
                                                    else Window{wname=s, width=w, height=h})
                                       (\r -> if r == []
                                              then (Horizontal [])
                                              else (Horizontal (r)))
                                       (\r -> if r == []
                                              then (Vertical [])
                                              else (Vertical (r)))
                                       wl