sum'n'count x 
  | x == 0 = (0,1)
  | x > 0 = helper 0 0 x
  | x < 0 = helper 0 0 (-x)
  where 
    helper sum cnt 0 = (sum, cnt)
    helper sum cnt x = helper (sum + mod x 10) (cnt + 1) (div x 10)