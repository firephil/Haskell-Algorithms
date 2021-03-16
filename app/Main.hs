import Timer(execute)
import Quicksort(qsort,qsort1,quicksort)
import Mergesort(mergesort)

ls = reverse [1..5000]

main :: IO ()
main = do
          execute (qsort ls)
          execute (quicksort ls)
          execute (qsort1 ls)