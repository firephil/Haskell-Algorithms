import Data.Time.Clock(getCurrentTime,diffUTCTime)
import Control.Exception
module Timer where

  exec  f ::[Int]-> [Int] = do
        start <- getCurrentTime
        evaluate (f)
        end   <- getCurrentTime
        print (diffUTCTime end start)