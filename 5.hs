main :: IO()

funcao xs ys = sum [x * y | (x, y) <- zip xs ys]

main = print(funcao [-1,1,-2] [2,-2,2])
