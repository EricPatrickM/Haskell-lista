main :: IO()

factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

prime :: Int -> Bool
prime n = factors n == [1,n]

join :: [Int] -> [(Int, Int)]
join [] = []
join (x:xs) = (x, 1 + count x xs) : join (filter (/= x) xs)
  where
    count _ [] = 0
    count y (z:zs)
      | y == z    = 1 + count y zs
      | otherwise = count y zs

primeFactors :: Int -> [(Int,Int)]
primeFactors k = join (aux k)

aux 1 = []
aux k = z
  where
    x = [x | x <- [2..k], prime x, (k `mod` x) == 0]
    z= [(head x)] ++ aux (k `div` head x)

main = print(primeFactors 42)
