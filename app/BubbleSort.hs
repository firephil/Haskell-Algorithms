module BubbleSort where

bubbleSort :: Ord a => [a] -> [a]
bubbleSort = foldr swapTill []

swapTill x [] = [x]
swapTill x (y:xs) = min x y : swapTill (max x y) xs


-- https://riptutorial.com/haskell/example/8103/bubble-sort
bsort :: Ord a => [a] -> [a]
bsort s = case bsort' s of
               t | t == s    -> t
                 | otherwise -> bsort t
  where bsort' (x:x2:xs) | x > x2    = x2:(bsort' (x:xs))
                         | otherwise = x:(bsort' (x2:xs))
        bsort' s = s