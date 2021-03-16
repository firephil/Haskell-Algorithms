import Timer(execute)
import Quicksort(qsort,qsort1,quicksort)
import Mergesort(mergeSort)
import System.Random
import Control.Monad.Random

import ShuffleList(shuffle)

ls = [1..10000]
rev = reverse ls

main :: IO ()
main =  do
          values <- evalRandIO(shuffle ls)  -- store Random[[Int]] to values list (unwrap monad)
          execute (quicksort values)
          execute (mergeSort values)
          execute (quicksort rev) -- pure performance when the list is reversed 0(n^2)
          execute (mergeSort rev) -- merge sort is a stable sort O(n(log(n)))
