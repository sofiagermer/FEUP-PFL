classifica :: Float -> Float -> String

imc peso altura = peso / (altura^2)
classifica peso altura 
                        | imc peso altura < 18.5 = "baixo peso"
                        | imc peso altura < 25 = "peso normal"
                        | imc peso altura < 30 = "excesso de peso"
                        | otherwise = "obesidade"
