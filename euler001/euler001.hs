euler001 :: Int -> Int
euler001 n = sum [x | x <- [1..n-1], x `mod` 3 == 0 || x `mod` 5 == 0]

main :: IO ()
main = print $ euler001 1000
