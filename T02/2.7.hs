--primo ∶∶ Integer →Bool

divprop n =  [x | x<-[1..(n-1)], (mod n x) ==0]


isprime n = if n == 1 then True else
            if length(divprop n) == 1 then True 
            else False
