module SelectionSort where

import Data.List (minimum, delete)

selectionSort :: Ord a => [a] -> [a]
selectionSort [] = []
selectionSort xs = let { x = minimum xs } 
           in  x : selectionSort (delete x xs)
