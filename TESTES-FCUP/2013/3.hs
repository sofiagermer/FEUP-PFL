
split :: Char -> String -> [String]
split char string = calcularAux string "" char

calcularAux :: String -> String -> Char -> [String]
calcularAux [] string char= [string]
calcularAux (x:xs) string char = if x == char  then string : calcularAux xs "" char
                                else calcularAux xs (string ++ [x]) char
