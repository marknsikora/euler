euler005 :: Int
euler005 = foldr1 lcm [1..20]

main = do print euler005
