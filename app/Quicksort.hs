module Quicksort where
import Data.List (partition)


-- one line implementation
qsort1 [] = []
qsort1 (x:xs) = qsort1 [y | y <- xs, y < x] ++ [x] ++ qsort1 [y | y <- xs, y >= x]

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort ys ++ x : qsort zs
  where
    (ys, zs) = partition (< x) xs

-- simple implementation using 3 lists  left,pivot,right

quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort list  = quicksort left ++ pivot_list ++ quicksort right
  where
     pivot = head list
     pivot_list = filter( == pivot) list
     left = filter(< pivot) list
     right = filter(> pivot) list