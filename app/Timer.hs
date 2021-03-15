module Timer where
import Data.Time.Clock(getCurrentTime,diffUTCTime)
import Control.Exception

execute f = do
        start <- getCurrentTime
        evaluate (f)
        end   <- getCurrentTime
        print (diffUTCTime end start)