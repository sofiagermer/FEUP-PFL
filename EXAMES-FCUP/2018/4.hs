sofi :: IO ()
sofi = do x <- getLine  
            let n = read x in
                if n == 0 then print n
                else print (n+1)