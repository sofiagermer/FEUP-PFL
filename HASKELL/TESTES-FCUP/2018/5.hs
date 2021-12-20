
length_zip :: String -> [(Int, Char)]
length_zip string = zip ([(length(string)), ((length(string))-1).. 1]) string