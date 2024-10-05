module PowerDigitSum (recursionMethod, tailRecursionMethod, mapMethod, modularMethod, infiniteListMethod) where

import Data.Char (digitToInt)

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
      tailRecursionHelper x acc = tailRecursionHelper (x `div` 10) (acc + x `mod` 10)
   in tailRecursionHelper num 0

mapMethod :: Integer -> Integer
mapMethod n = sum . map (fromIntegral . digitToInt) . show $ n

modularMethod :: Integer -> Int
modularMethod n = sumDigits (digits n)
  where
    digits :: Integer -> [Int]
    digits = map digitToInt . show

    sumDigits :: [Int] -> Int
    sumDigits = foldr (+) 0

infiniteListMethod :: Int -> Int
infiniteListMethod n = sumDigits (powersOfTwo !! (n - 1))
  where
    powersOfTwo :: [Integer]
    powersOfTwo = [2 ^ n | n <- [1 ..]]

    sumDigits :: Integer -> Int
    sumDigits = sum . map (fromIntegral . digitToInt) . show
