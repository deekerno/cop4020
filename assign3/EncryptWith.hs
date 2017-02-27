module EncryptWith where
import Data.Char

encryptWith :: (Int -> Int) -> [String] -> [String]
encryptWith f [] = []
encryptWith f (s:str) = [[chr (x) | c <- s, let x = (f (ord (c)))]]
                        ++ (encryptWith f str)
