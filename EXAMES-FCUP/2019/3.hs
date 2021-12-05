type Vert = Int 
type Graph = [(Vert, Vert)]

transitiva v1 v2 v3 v4 = if find (v1, v2) 