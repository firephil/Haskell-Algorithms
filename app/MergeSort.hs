module Mergesort where

mergesort :: [Int] -> [Int] ->[Int]
mergesort xs [] = xs
mergesort [] ys = ys
mergesort (x:xs) (y:ys) | x <= y    = x:mergesort xs (y:ys)
                    | otherwise = y:mergesort (x:xs) ys