module P2 where
problem = sum . filter even . takeWhile (<4000000) $ fib
    where fib = 0: scanl (+) 1 fib
