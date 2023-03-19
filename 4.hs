main :: IO()
strip :: Eq a => [a] -> [a] -> [a]

strip xs [] = []
strip xs (y:ys) = if length z > 0 then strip xs ys else [y] ++ strip xs ys
  where
    z = [x | x <- xs, x == y]

--main = print(strip [1,2,3,5] [1,2,3,5])
main = print(strip "a" "batata")