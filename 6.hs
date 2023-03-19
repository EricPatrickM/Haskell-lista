main :: IO()

splitToken :: Eq a => a -> [a] -> [[a]] 
splitToken k [] = []
splitToken k xs = [y] ++ splitToken k (drop(length y+1) xs)
  where
    y=aux k xs

aux k [] = []
aux k (x:xs)
  | x/=k = [x] ++ aux k xs
  | otherwise = []

main = print(splitToken 3 [3,1,2,3,4,5,3,6,7])
