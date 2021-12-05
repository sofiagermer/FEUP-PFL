-- ALÍNEA a)
palavras :: String -> [String]
palavras string = palavrasAux string []

palavrasAux :: String -> String -> [String]
palavrasAux [] string = [string]
palavrasAux (x:xs) string
  | x ==  ' '  && string /= "" = string : palavrasAux xs []
  | x /= ' ' = palavrasAux xs (string ++ [x])
  | otherwise = palavrasAux xs string


-- ALÍNEA b) 
despalavras :: [String] -> String
despalavras xs = foldr (++) " " xs

-- contra- exemplo : quando palavras tem um ou mais espaços não os guardamos na lista 
-- palavras "Abra- ca-    dabra!"
-- ["Abra-","ca-","dabra!"]
