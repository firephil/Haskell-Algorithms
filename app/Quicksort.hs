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
quicksort list  = quicksort left ++ pivotlist ++ quicksort right
  where
     pivot = head list
     pivotlist = filter( == pivot) list
     left = filter(< pivot) list
     right = filter(> pivot) list

main :: IO ()
main = do
        print(quicksort [5,2,2,3,3,1,4,0,2])
        getLine -- wait for a key press to exit
        print("Press a enter to exit")
