module PowerDigitSum (recursionMethod, tailRecursionMethod, mapMethod) where

recursionMethod :: Integer -> Integer
recursionMethod num =
  let recursionHelper :: Integer -> Integer
      recursionHelper 0 = 0
      recursionHelper n = (n `mod` 10) + recursionHelper (n `div` 10)
   in recursionHelper num

tailRecursionMethod :: Integer -> Integer
tailRecursionMethod num =
  let tailRecursionHelper :: Integer -> Integer -> Integer
      tailRecursionHelper 0 acc = acc
      tailRecursionHelper x acc = tailRecursionHelper (x `div` 10) (acc + fromIntegral (x `mod` 10))
   in tailRecursionHelper num 0

mapMethod :: Integer -> Integer
mapMethod num = sum . map (\c -> read [c] :: Integer) $ show num
