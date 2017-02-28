module TotalHeight where
import WindowLayout 

totalHeight :: WindowLayout -> Int 
totalHeight (Window wname width height) = height 

totalHeight (Horizontal []) = 0 
totalHeight(Horizontal winlst) = maximum(map totalHeight winlst)
 
totalHeight (Vertical []) = 0 
totalHeight(Vertical winlst) = sum(map totalHeight winlst)

