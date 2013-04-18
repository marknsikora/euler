maxCount :: Int
maxCount = 1000

euler001 :: Int
euler001 = sum [x | x <- [1..maxCount-1], x `mod` 3 == 0 || x `mod` 5 == 0]

main = print euler001
