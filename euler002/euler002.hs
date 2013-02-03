maxCount :: Int
maxCount = 4000000

fibs :: (Integral a) => [a]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

euler002 :: Int
euler002 = sum (filter odd (takeWhile (<maxCount) fibs))

main :: IO ()
main = do putStrLn (show euler002)
