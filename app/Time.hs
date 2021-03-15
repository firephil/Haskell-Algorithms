module Time where
import Control.Exception
import Formatting
import Formatting.Clock
import System.Clock

execute f =
  do start <- getTime Monotonic
     evaluate (f)
     end <- getTime Monotonic
     fprint (timeSpecs % "\n") start end