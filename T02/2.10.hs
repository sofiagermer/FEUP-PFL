-- (a) and ∶∶ [Bool ] →Bool — testar se todos os valores são True;
myand [] = True
myand(x : xs) = x && myand xs

-- (b) or ∶∶ [Bool ] →Bool — testar se algum valor é True;
myor [] = False
myor(x : xs) = x || myor xs

-- (c) concat ∶∶ [[a]] →[a] — concatenar uma lista de listas;
myconcat [] = []
myconcat (x:xs) = x ++ myconcat xs

-- (d) replicate ∶∶ Int →a →[a] — produzir uma lista com n elementos iguais;

myreplicate 1 x = [x]
myreplicate y x = (myreplicate (y-1) x) ++ [x]

-- (e) (!!) ∶∶ [a] →Int →a — selecionar o n-ésimo elemento duma lista;
my(!!) lista 0 = head(lista)
my(!!) (listax:xs) num = my(!!) xs (num-1)

-- (f) elem ∶∶ Eq a ⇒a →[a] →Bool — testar se um valor ocorre numa lista.
myelem el [] = False
myelem el (x:xs) = el == x || (myelem el xs)
