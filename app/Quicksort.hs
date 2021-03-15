import Data.List (partition)
import Data.Time.Clock(getCurrentTime,diffUTCTime)
import Control.Exception
import Timer(execute)

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
quicksort list  = quicksort left ++ pivotlist ++ quicksort right
  where
     pivot = head list
     pivotlist = filter( == pivot) list
     left = filter(< pivot) list
     right = filter(> pivot) list

ls = reverse [1..5000]

main :: IO ()
main = do
          execute (qsort ls)
          execute (quicksort ls)
          execute (qsort1 ls)