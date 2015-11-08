module nat

import bool
import eq
import Serialize

data nat = O | S nat

||| return true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

oddb: nat -> bool
oddb n = not (evenb n)

||| given two natural numbers, return their sum
add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add m (mult n m)

fact: nat -> nat
fact O = S O
fact (S n) = mult (S n) (fact n)

sub: nat -> nat -> nat
sub O m = O
sub n O = n
sub (S n) (S m) = sub n m

exp: nat -> nat -> nat
exp n O = S O
exp n (S m) = mult (exp n m) n

-- given two natural numbers, (a, b), return true if a is less than or equal to b, otherwise return false
le: nat -> nat -> bool
le O n = true
le (S n) O = false
le (S n) (S m) = le n m

-- given two natural numbers, (a, b), return true if a is equal to b, otherwise return false
eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat O (S n) = false
eql_nat (S n) O = false
eql_nat (S n) (S m) = eql_nat n m

-- given two natural numbers, (a, b), return true if a is greater than b, otherwise return false
gt: nat -> nat -> bool
gt n m = not (le n m)

-- given two natural numbers, (a, b), return true if a is greater than or equal to b
ge: nat -> nat -> bool
ge n O = true
ge O (S m) = false
ge (S n) (S m) = ge n m

-- given two natural numbers, (a, b), return true if a is less than b
lt: nat -> nat -> bool
lt n m = not (ge n m)

fib: nat -> nat
fib O = O
fib (S O) = (S O)
fib (S (S n)) = add (fib (S n)) (fib n)

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "s" ++ (toString n)
