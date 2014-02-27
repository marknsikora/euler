euler005 :: Int
euler005 = foldr1 lcm [1..20]

main :: IO ()
main = print euler005
