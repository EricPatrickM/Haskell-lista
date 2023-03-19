main :: IO()

funcao k [] = []
funcao k (x:xs) = y ++ funcao k xs
  where
    y = if k < x then [x] else []

main = print(funcao 2 [1,2,3,5])
main :: IO()

funcao k xs = [x | x <- xs, x > k]

main = print(funcao 0 [1,2,3,5])