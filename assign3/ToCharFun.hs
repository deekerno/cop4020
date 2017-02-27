module ToCharFun where
import Data.Char

toCharFun :: (Int -> Int) -> (Char -> Char)
toCharFun f = (\x -> (chr (f (ord x))))
