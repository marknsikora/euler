euler015 :: Int -> Integer
euler015 x = let x' = fromIntegral x in (2*x') `choose` x'
  where
    choose _ 0 = 1
    choose 0 _ = 0
    choose n k = ((n-1) `choose` (k-1)) * n `div` k

main :: IO ()
main = print $ euler015 20
