numberLetterCount :: Int -> Int
numberLetterCount n = case n of
  0  -> 4 -- zero
  1  -> 3 -- one
  2  -> 3 -- two
  3  -> 5 -- three
  4  -> 4 -- four
  5  -> 4 -- five
  6  -> 3 -- six
  7  -> 5 -- seven
  8  -> 5 -- eight
  9  -> 4 -- nine
  10 -> 3 -- ten
  11 -> 6 -- eleven
  12 -> 6 -- twelve
  13 -> 8 -- thirteen
  14 -> 8 -- fourteen
  15 -> 7 -- fifteen
  16 -> 7 -- sixteen
  17 -> 9 -- seventeen
  18 -> 8 -- eighteen
  19 -> 8 -- nineteen
  20 -> 6 -- twenty
  30 -> 6 -- thirty
  40 -> 5 -- forty
  50 -> 5 -- fifty
  60 -> 5 -- sixty
  70 -> 7 -- seventy
  80 -> 6 -- eighty
  90 -> 6 -- ninety
  _ | n < 100 -> let (tens, ones) = seperateOn 10
                in tens + ones

    | n < 1000 -> case () of
      _ | n `mod` 100 == 0 -> let hundreds = chompOff 100
                              in  hundreds + 7 -- n hundred
        | otherwise -> let (hundreds, tens) = seperateOn 100
                       in hundreds + 3 + tens -- hundreds and tens

    | n < 1000000 -> case () of
      _ | n `mod` 1000 == 0 -> let thousands = chompOff 1000
                               in thousands + 8 -- n thousand

    where
      seperateOn x = let upper = numberLetterCount $ (n `div` x) * x
                         lower = numberLetterCount $ n `mod` x
                     in (upper, lower)
      chompOff x = numberLetterCount $ n `div` x

euler017 :: Int -> Int
euler017 n = sum . map numberLetterCount $ [1..n]

main :: IO ()
main = print $ euler017 1000
