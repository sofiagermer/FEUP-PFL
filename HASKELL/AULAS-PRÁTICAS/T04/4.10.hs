data Arv a = Vazia | No a (Arv a) (Arv a)

-- mapArv :: (a -> b) -> Arv a -> Arv b
-- mapArv f Vazia = Vazia
-- mapArv f (No x esq dir) = No (f x) (mapArv f esq) (mapArv f dir)

-- listarDecrescente :: Arv a -> [a]
-- listarDecrescente Vazia = []
-- listarDecrescente (No x esq dir) = listarDecrescente dir ++ [x] ++ listarDecrescente esq

-- sofi = mapArv (+) (No 11 (No 3 (No 2 Vazia Vazia) (No 5 Vazia Vazia)) (No 19 (No 13 Vazia Vazia) (No 23 Vazia Vazia)))
-- a = listarDecrescente sofi


decrescente :: Arv a -> [a]
decrescente Vazia = []
decrescente (No val esq dir) = decrescente dir ++ [val] ++ decrescente esq

mapArv :: (a -> b) -> Arv a -> Arv b
mapArv f Vazia = Vazia
mapArv f (No val esq dir) = No (f val) (mapArv f esq) (mapArv f dir)