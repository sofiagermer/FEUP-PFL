--classifica :: Int -> String
{--
classifica x = if x < 0 || x > 20 then "nota invalida" else
               if x <= 9 then "reprovado" else
               if x <= 12 then "suficiente" else
               if x <= 15 then "bom" else
               if x <= 18 then "muito bom" else
               if x <= 20 then "muito bom com distinção" 
--}


classifica x | x < 0 || x > 20 = "nota invalida"
             | x <= 9 = "reprovado"
             | x <= 12 = "suficiente"
             | x <= 15 = "bom"
             | x <= 18 = "muito bom"
             | x <= 20 = "muito bom com distincao"
 
