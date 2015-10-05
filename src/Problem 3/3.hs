module P3 where

import Math.NumberTheory.Primes.Factorisation

problem = last . factor 600851475143 primes . quotRem 600851475143 $ 2
    where
          factor 1 _          _     = []
          factor _ (ya:yb:ys) (q,0) = ya:factor q (yb:ys) (quotRem q yb)
          factor x (yb:ys) (_,_) = factor x ys (quotRem x yb)
          primes = sieve' [2..]
          sieve' (p:xs) = p:sieve' [x | x <- xs, mod x p > 0]

problem2 = fst . last $ factorise' 600851475143
