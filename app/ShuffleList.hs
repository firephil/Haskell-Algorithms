--https://hackage.haskell.org/package/MonadRandom-0.1.3/docs/Control-Monad-Random.html
--https://wiki.haskell.org/Random_shuffle
module ShuffleList where

import Control.Monad
import Control.Monad.ST
import Control.Monad.Random
import System.Random
import Data.Array.ST
import GHC.Arr

shuffle :: RandomGen g => [a] -> Rand g [a]
shuffle xs = do
    let l = length xs
    rands <- forM [0..(l-2)] $ \i -> getRandomR (i, l-1)
    let ar = runSTArray $ do
                              ar <- thawSTArray $ listArray (0, l-1) xs
                              forM_ (zip [0..] rands) $ \(i, j) -> do
                                  vi <- readSTArray ar i
                                  vj <- readSTArray ar j
                                  writeSTArray ar j vi
                                  writeSTArray ar i vj
                              return ar
    return (elems ar)