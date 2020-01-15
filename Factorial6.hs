factorial6 n
    | n >= 0 = let
        helper acc 0 = acc
        helper acc n = helper (acc * n) (n - 1)
               in helper 1 n
	| otherwise = error "args must be >= 0" 