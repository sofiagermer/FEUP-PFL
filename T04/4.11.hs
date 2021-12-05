{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
data Arv a = Vazia | No a (Arv a) (Arv a)

-- ALÍNEA a) 
-- construir :: [a] -> Arv a
-- construir [] = Vazia
-- construir xs = No x (construir xs') (construir x'')
  --  where n = length div xs 2 -- ponto médio
    --    xs = take n xs -- partir a lista
    --    x:xs” = drop n xs


-- ALÍNEA b) 
-- inserir :: Ord a => a -> Arv a -> Arv a
inserir x Vazia = No x Vazia Vazia
inserir x (No y esq dir)
    | x==y = No y esq dir -- já ocorre; não insere
    | x<y = No y (inserir x esq) dir -- insere à esquerda
    | x>y = No y esq (inserir x dir) -- insere à direita

construir :: [a] -> Arv a
construir xs = foldr inserir Vazia xs