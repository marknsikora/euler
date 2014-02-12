fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

euler025 :: Int
euler025 = length . takeWhile (lengthLessThan 1000) $ fibs
  where
    lengthLessThan n x = (length . show $ x) < n

main :: IO ()
main = print euler025
