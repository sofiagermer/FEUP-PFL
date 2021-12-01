-- ALÍNEA a)
--insert ∶∶ Ord a ⇒a →[a] →[a]
insert x []= [x]
insert el (x:xs) =  if el < x then [el] ++ insert x xs else [x] ++ insert el xs


-- ALÍNEA b)
--isort ∶∶ Ord a ⇒[a] →[a]
isort [] = []
isort(x:xs) = insert x (isort xs)
