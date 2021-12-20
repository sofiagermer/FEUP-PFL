--pascal ∶∶ Integer →[[Integer ]]

factorial n = product [1..n]
binom n k = div (factorial n) ((factorial k) * (factorial (n-k)))

-- pascal n k = [[binom n k] | n <- 

lista n =[ (x,y) | x<-[0,1..n], y<-[0..x] ]

interior a = [binom a i | i<-[0..a]]

final n =[interior x | x<-[0,1..n]]




