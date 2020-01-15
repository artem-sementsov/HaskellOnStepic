interval = 1000

integration :: (Double -> Double) -> Double -> Double -> Double ; integration f a b 
  | b == a = 0.0
  | otherwise = helper f a b 0 1 
  where
    helper f a b s n 
                     | n == interval = (s + (f a + f b) / 2) * ((b - a) / n)
                     | otherwise = helper f a b (s + f (a + (b - a) / interval * n)) (n + 1)