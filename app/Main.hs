module Main
  ( main,
  )
where

import PowerDigitSum
import LatticePaths

main :: IO ()
main = do
  let f = 2 ^ 1000
  print $ show (recursionMethod f)
  print $ show (tailRecursionMethod f)
  print $ show (mapMethod f)
