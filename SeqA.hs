-- a0=1;a1=2;a2=3;ak+3=ak+2+ak+1−2ak.

seqA n
    | n >= 0 = let
        helper a b c 0 = 1
        helper a b c 1 = 2
        helper a b c 2 = 3
        helper a b c n = helper b c (c + b - 2 * a) (n - 1) + b - 2 * a
               in helper 1 2 3 n
    | otherwise = error "arg must be >= 0"

