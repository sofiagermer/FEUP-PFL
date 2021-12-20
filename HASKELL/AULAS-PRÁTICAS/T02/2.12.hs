import GHC.Unicode
--forte :: String -> Bool 
aux1 [] = False
aux1 (x:xs) = if isUpper(x) then True else aux1 xs

aux2 [] = False
aux2 (x:xs) = if isDigit(x) then True else aux2 xs

forte string = if length(string) < 8 then False else
               if (aux1 string == False) then False else
               if (aux2 string == False) then False else 
               True
