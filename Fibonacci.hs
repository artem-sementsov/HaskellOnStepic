fibonacci n | n > 0 = helper 0 1 n
            | True = (-1)^(-n+1) * helper 0 1 (-n)

helper a b n | n == 1 = 1
             | n == 0 = 0
			 | n == -1 = 1
			 | n == -2 = -1
			 | n > 0 = helper b (a + b) (n - 1) + a
			 
root a = let {x = sqrt a; y = a ^ 2} in x + y