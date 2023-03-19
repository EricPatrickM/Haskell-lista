main :: IO()

ataca :: (Int,Int) -> [(Int,Int)] -> Bool


ataca (x,y) xs = and [(aux (x,y) (a,b)) | (a,b) <- xs]
aux (a,b) (c,d) = if (a==c) then True else if b==d then True else if abs(a-c) == abs(b-d) then True else False

main = print(ataca (3,1) [(1,2),(2,4)])
