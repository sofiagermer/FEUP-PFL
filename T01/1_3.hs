metades = [1,2,3,4,5,6,7,8]
total = length metades
met = fromIntegral(total) / 2
primeiro = ((take (round(met)) metades), (drop (round(met)) metades))
