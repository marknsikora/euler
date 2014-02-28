import Data.Numbers.Primes

euler003 :: Integer -> Integer
euler003 = last . primeFactors

main :: IO ()
main = print $ euler003 600851475143
