module Main
  ( main,
  )
where

import LatticePaths
import PowerDigitSum

main :: IO ()
main = do
  let f = 2 ^ 1000
  print $ show (recursionMethod f)
  print $ show (tailRecursionMethod f)
  print $ show (mapMethod f)
