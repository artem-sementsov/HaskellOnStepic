module Dist where

p1 = (2, 2)
p2 = (-2, -1)
-- dist :: (Double, Double) -> (Double, Double) -> Double ; dist p1 p2 = sqrt $ (^) $ fst p1 - fst p2 + (^) $ snd p1 - snd p2 
-- dist p1 p2

dist :: (Double, Double) -> (Double, Double) -> Double; dist p1 p2 = sqrt $ (fst p1 - fst p2) ^ 2 + (snd p1 - snd p2) ^ 2