module MergeSort where

import Data.List (partition)
import Data.Time.Clock(getCurrentTime,diffUTCTime)
import Control.Exception
import Timer(execute)

mergesort :: [Int] -> [Int]

ls = reverse [1..5000]

main :: IO ()
main = do
          execute (mergesort ls)