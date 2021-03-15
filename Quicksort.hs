import Data.List (partition)

-- one line implementation

qsort1 [] = []
qsort1 (x:xs) = qsort1 [y | y <- xs, y < x] ++ [x] ++ qsort1 [y | y <- xs, y >= x]

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort ys ++ x : qsort zs
  where
    (ys, zs) = partition (< x) xs

-- simple implementation using 3 lists

quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort list  = quicksort left ++ pivotlist ++ quicksort right
  where
    --pivot :: Int
    pivot = head list

    --pivotlist :: [Int]
    pivotlist = filter( == pivot) list

    --left :: [Int]
    left = filter(< pivot) list

   -- right :: [Int]
    right = filter(> pivot) list

main :: IO ()

main = do
        putStrLn $ show  (quicksort [5,2,3,1,4,0,2])
        line <- getLine -- wait for a key press to exit
