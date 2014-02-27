euler005 :: Int -> Int
euler005 n = foldr1 lcm [1..n]

main :: IO ()
main = print $ euler005 20
