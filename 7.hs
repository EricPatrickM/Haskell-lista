main :: IO()

aux k x = x ++ k
joinToken k [] = ""
joinToken k (x:xs) = if length xs == 0 then aux "" x else aux k x ++ joinToken k xs

main = print(joinToken " " ["this","is","a","test"])
