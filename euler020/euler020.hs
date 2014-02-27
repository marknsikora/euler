import Data.Char (digitToInt)

fact :: Int -> Integer
fact n = product [1..n']
  where
    n' = fromIntegral n

euler020 :: Int
euler020 = sum . map digitToInt . show . fact $ 100

main :: IO ()
main = print euler020
