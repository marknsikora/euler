fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

euler025 :: Int -> Int
euler025 n = length . takeWhile (lengthLessThan n) $ fibs
  where
    lengthLessThan l x = (length . show $ x) < l

main :: IO ()
main = print $ euler025 1000
