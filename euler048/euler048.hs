euler048 :: Integer -> Integer
euler048 n = series `rem` 10000000000
  where
    series = sum . map (\x -> x^x) $ [1..n]

main :: IO ()
main = print $ euler048 1000
