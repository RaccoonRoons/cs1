module natTest

import nat
import Serialize

-- Here are some examples of some objects (named values) of type nat.

-- zero
z: nat
z = O

-- one
o: nat
o = S O

-- two
t: nat
t = S o

-- three
r: nat
r = S t

p: nat
p = S r

q: nat
q = S p

-- isZero function --

-- test expecting true
isZero O

-- test expecting false
isZero S O

-- evenb function --

-- test expecting true
evenb O

-- test expecting true
evenb (S(S O))

-- test expecting false
evenb (S(S(S O)))

-- Testing for the addp function --

-- test expecting 3
addp (mkPair (S(S(S O))) (O))

-- test expecting 5
addp (mkPair (S(S O)) (S(S(S O))))

-- Testing for the multp function --

-- test expecting O
multp (mkPair (S(S O)) (O))

-- test expecting 6
multp (mkPair (S(S O)) (S(S(S O))))

-- Testing for the factp function --

-- test expecting 1
factp O

-- test expecting 24
factp S(S(S(S O)))

-- Testing for the subp function --

-- test expecting O
subp (mkPair (O) (S O))

-- test expecting O
subp (mkPair (S O) (S S O))

-- test expecting 1
subp (mkPair (S(S O)) (S O))

-- Testing for exp function --

-- test expecting 1
exp (mkPair (S(S O)) (O))

-- test expecting 8
exp (mkPair (S(S O)) (S(S(S O))))

-- Testing for lep function --

-- test expecting true
lep (mkPair (O) (S O))

-- test expecting false
lep (mkPair (S O) (O))

-- test expecting true
lep (mkPair (S O) (S(S O)))

-- test expecting false
lep (mkPair (S(S O)) (S O))

-- Testing for eqp function --

-- test expecting true
eqp (mkPair (O)(O))

-- test expecting false
eqp (mkPair (O) (S O))

-- test expecting false
eqp (mkPair (S n) (O))

-- test expecting false
eqp (mkPair (S(S O)) (S(S(S O))))

-- test expecting true
eqp (mkPair (S(S(S O))) (S(S(S O))))

-- Testing for gtp function --

-- test expecting true
gtp (mkPair (S O) (O))

-- test expecting false
gtp (mkPair (O) (S O))

-- test expecting true
gtp (mkPair (S(S O)) (S O))

-- Testing for gep function

-- test expecting true
gep (mkPair (S O) (O))

-- test expecting false
gep (mkPair (O) (S O))

-- test expecting true
gep (mkPair (S O) (S O))

-- test expecting false
gep (mkPair (S(S O)) (S O))

-- Testing for gtp function

-- test expecting true
gtp (mkPair (S O) (O))

-- test expecting false
gtp (mkPair (O) (S O))

-- test expecting false
gtp (mkPair (O) (O))

-- test expecting false
gtp (mkPair (S O) (S O))

--NEW TESTS FOR PARTIALLY EVALUATED FUNCTIONS!

-- test expecting O
add O O

-- test expecting 5
add O (S(S(S(S(S O)))))

-- test expecting 5
add (S(S O)) (S(S(S O)))

-------------------------------
-- test expecting O
mult O O

-- test expecting O
mult O (S(S O))

-- test expecting 6
mult (S(S O)) (S(S(S O)))
------------------------------
-- test expecting 1
fact O

-- test expecting 6
fact (S(S(S O)))
------------------------------
-- test expecting O
sub O (S(S(S O)))

-- test expecting 3
sub (S(S(S O))) O

-- test expecting 1
sub (S(S(S O))) (S(S O))
-----------------------------
-- test expecting 1
exp (S(S O)) O

--test expecting 8
exp (S(S O)) (S(S(S O)))
-----------------------------
-- test expecting true
le O (S O)

-- test expecting false
le (S O) O

-- test expecting true
le (S O) (S(S O))

-- test expecting true
le (S O) (S O)

-- test expecting false
le (S(S O)) (S O)
---------------------------
-- test expecting true
eq O O

-- test expecting false
eq O (S O)

-- test expecting false
eq (S O) O

-- test expecting true
eq (S O) (S O)

-- test expecting false
eq (S(S O)) (S O)

-- test expecting false
eq (S O) (S(S O))
--------------------------
-- test expecting true
gt (S O) O

-- test expecting false
gt O (S O)

-- test expecting true
gt (S(S O)) (S O)

-- test expecting false
gt (S O) (S(S O))
--------------------------
-- test expecting true
ge (S O) O

-- test expecting false
ge O (S O)

-- test expecting true
ge (S O) (S O)

-- test expecting true
ge (S(S O)) (S O)

-- test expecting false
ge (S O) (S(S O))
-------------------------
-- test expecting true
lt O (S O)

-- test expecting false
lt (S O) O

-- test expecting true
lt (S O) (S(S O))

-- test expecting false
lt (S(S O)) (S O)
-------------------------
-- test expecting O
fib O

-- test expecting 1
fib (S O)

-- test expecting 8
fib (S(S(S(S(S(S O))))))

pf: nat -> nat
pf = add (S (S O))

sz: String
sz = toString (S (S (S O)))
