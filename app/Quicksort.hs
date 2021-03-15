import Data.List (partition)
--import Data.Time.Clock

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

ls = [5,2,2,3,3,1,4,0,2]
xs = quicksort ls
ys = qsort ls

doMyThing = do
              start <- getCurrentTime
              quicksort ls
              end  <- getCurrentTime
              return $ diffUTCTime end start





main :: IO ()
main = do
          print(doMyThing)
          getLine -- wait for a key press to exit
          print("exit")
