-- https://riptutorial.com/haskell/example/12246/selection-sort
module SelectionSort where

import Data.List (minimum, delete)

selectionSort :: Ord a => [a] -> [a]
selectionSort [] = []
selectionSort xs = let { x = minimum xs } 
           in  x : selectionSort (delete x xs)
