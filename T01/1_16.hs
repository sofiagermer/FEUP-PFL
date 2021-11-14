--converte :: Int -> String

converte x
        | x == 0 = " "
        | x == 1 = "um"
        | x == 2 = "dois"
        | x == 3 = "três"
        | x == 4 = "quatro"
        | x == 5 = "cinco"
        | x == 6 = "seis"
        | x == 7 = "sete"
        | x == 8 = "oito"
        | x == 9 = "nove"
        | x == 10 = "dez"
        | x == 11 = "onze"
        | x == 12 = "doze"
        | x == 13 = "treze"
        | x == 14 = "quatorze"
        | x == 15 = "quinze"
        | x == 16 = "desasseis"
        | x == 17 = "desassete"
        | x == 18 = "desoito"
        | x == 19 = "desanove"
        | x == 20 = "vinte"
        | x > 20 && x < 30 = converte 20 ++ " e " ++ converte (mod x 20) 
        | x == 30 = "trinta"
        | x > 30 && x < 40 = converte 30 ++ " e " ++ converte (mod x 30) 
        | x == 40 = "quarenta"
        | x > 40 && x < 50 = converte 40 ++ " e " ++ converte (mod x 40) 
        | x == 50 = "cinquenta"
        | x > 50 && x < 60 = converte 50 ++ " e " ++ converte (mod x 50) 
        | x == 60 = "sessenta"
        | x > 60 && x < 70 = converte 60 ++ " e " ++ converte (mod x 60) 
        | x == 70 = "setenta"
        | x > 70 && x < 80 = converte 70 ++ " e " ++ converte (mod x 70) 
        | x == 80 = "oitenta"
        | x > 80 && x < 90 = converte 80 ++ " e " ++ converte (mod x 80) 
        | x == 90 = "noventa"
        | x > 90 && x < 100 = converte 90 ++ " e " ++ converte (mod x 90) 
        | x == 100 = "cem"
        | x > 100 && x < 200 = "cento e " ++ converte (mod x 100)
        | x == 200 = "duzentos"
        | x > 200 && x < 300 = converte 200 ++ " e " ++ converte (mod x 100) 
        | x == 300 = "trezentos"
        | x > 300 && x < 400 = converte 300 ++ " e " ++ converte (mod x 300) 
        | x == 400 = "quatrocentos"
        | x > 400 && x < 500 = converte 400 ++ " e " ++ converte (mod x 400) 
        | x == 500 = "quinhentos"
        | x > 500 && x < 600 = converte 500 ++ " e " ++ converte (mod x 500) 
        | x == 600 = "seisentos"
        | x > 600 && x < 70 = converte 600 ++ " e " ++ converte (mod x 600) 
        | x == 700 = "setecentos"
        | x > 700 && x < 80 = converte 700 ++ " e " ++ converte (mod x 700) 
        | x == 800 = "oitocentos"
        | x > 800 && x < 900 = converte 800 ++ " e " ++ converte (mod x 800) 
        | x == 900 = "novecentos"
        | x > 900 && x < 1000 = converte 900 ++ " e " ++ converte (mod x 900) 
        | x == 1000 = "mil"
        | x > 1000 && x < 10000= "mil " ++ converte (mod x 1000)
        | x >= 10000 = converte( div (x - (mod x 1000)) 1000) ++ " mil e " ++ converte (mod x 1000)
        | x > 1000000 = "programa converte apenas números inferiores a 1 milhão"
