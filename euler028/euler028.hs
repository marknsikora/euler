euler028 :: Int -> Integer
euler028 n = succ . sum . map (\k -> 4*k*k - 6*k + 6) $ [3,5..n']
  where
    n' = fromIntegral n

main :: IO ()
main = print $ euler028 1001
