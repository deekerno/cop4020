module SplitScreen where 
import WindowLayout 

splitScreen :: String -> WindowLayout -> WindowLayout 
splitScreen name (Window {wname=n, width=m, height=h}) = if(name == n)
                                      then Horizontal(let w = Window{wname = n, width = (m `div` 2), height = h} in [w,w])
                                      else Window{wname=n, width=m, height=h} 
splitScreen name (Horizontal []) = Horizontal [] 
splitScreen name (Horizontal winlist) = (Horizontal (map (splitScreen name) winlist))
splitScreen name (Vertical []) = Vertical []
splitScreen name (Vertical winlist) = (Vertical (map (splitScreen name) winlist))