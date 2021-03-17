import Timer(execute)
import Quicksort(qsort,qsort1,quicksort)
import Mergesort(mergeSort)
import System.Random
import Control.Monad.Random

import ShuffleList(shuffle)
import STshuffle(st_shuffle)
import InsertionSort(insertionSort)

ls = [1..800]
rev = reverse ls
--xs = st_shuffle ls


main :: IO ()
main =  do
          --print( take(10) (insertionSort rev) ) test insertion sort works
          values <- evalRandIO(shuffle ls)  -- store Random[[Int]] to values list (unwrap monad)
          putStrLn("Sorting a Randomized list...")
          execute (quicksort values)
          execute (mergeSort values)
          execute (insertionSort values)

          putStrLn("")
          putStrLn("Sorting a reverse sorted list...")

          execute (quicksort rev) -- pure performance when the list is reversed 0(n^2)
          execute (mergeSort rev) -- merge sort is a stable sort O(n(log(n)))
          execute (insertionSort rev)
