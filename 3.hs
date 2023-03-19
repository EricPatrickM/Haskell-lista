main :: IO()
isIn :: Eq a => a -> [a] -> Bool

isIn k xs = if length y > 0 then True else False
  where
    y = [x | x <- xs, x == k]

--main = print(isIn 'a' "Haskell")
main = print(isIn 5 [1,2,3,5])
