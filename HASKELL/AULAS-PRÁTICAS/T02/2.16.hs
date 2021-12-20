--algarismos ∶∶ Int →[Int ]

algarismosRev x = if x < 10 then [x] else [mod x 10] ++ algarismosRev ( div x 10)

algarismos x = reverse (algarismosRev x)
