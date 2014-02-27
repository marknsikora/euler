euler028 :: Integer
euler028 = succ . sum . map (\k -> 4*k*k - 6*k + 6) $ [3,5..1001]

main :: IO ()
main = print euler028
