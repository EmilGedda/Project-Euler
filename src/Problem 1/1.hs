module P1 where
problem = let s x = sum [0,x..999] in s 3 + s 5 - s 15
