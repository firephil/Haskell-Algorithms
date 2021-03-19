import Timer(execute)
import Quicksort(qsort,qsort1,quicksort)
import Mergesort(mergeSort)
import ShuffleList(shuffle)
import STshuffle(st_shuffle)
import InsertionSort(insertionSort)
import SelectionSort(selectionSort)
import BubbleSort(bubbleSort)

import Data.List(sort)
import System.Random
import Control.Monad.Random

ls = [1..9000]
rev = reverse ls


main :: IO ()
main =  do
          values <- evalRandIO(shuffle ls)  -- store Random[[Int]] to values list (unwrap monad)
          putStrLn("Sorting a Randomized list...")
          execute (quicksort values)
          execute (mergeSort values)
          execute (insertionSort values)
          execute (selectionSort values)
          execute (bubbleSort values)
          execute (sort  values) -- library sort

          putStrLn("")
          putStrLn("Sorting a reverse sorted list...")
          --execute (quicksort rev) -- pure performance when the list is reversed 0(n^2)
          execute (mergeSort rev) -- merge sort is a stable sort O(n(log(n)))
          execute (insertionSort rev)
          execute (selectionSort rev)
          execute (bubbleSort rev)
          execute (sort  rev)