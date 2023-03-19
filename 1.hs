main :: IO()

insere k [] = [k]
insere k (x:xs) = if k/=x then [x] ++ insere k xs else [x] ++ xs

main = print(insere 4 [1,2,3,5])


–Podemos alterá-lo adicionando um if e verificando se é menor:
main :: IO()

insere k [] = [k]
insere k (x:xs) = if k < x then [k] ++ [x] ++ xs else if k==x then [x] ++ xs else [x] ++ insere k xs

main = print(insere 6 [1,2,3,5])