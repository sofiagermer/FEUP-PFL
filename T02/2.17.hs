toBits :: Int -> [Int]

toBitsRev x = if x < 2 then [x] else [mod x 2] ++ toBitsRev ( div x 2)

toBits x = reverse (toBitsRev x)
