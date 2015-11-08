module boolTest

import bool
import Serialize

data boolTest = bool

b1: bool
b1 = true

b2: bool
b2 = true

b3: bool
b3 = false

-- Testing for the not function --

-- test expecting false
b4: bool
b4 = not true

-- test expecting false
b5: bool
b5 = not b1

-- test expecting false
b6: bool
b6 = not(not b5)

-- test expecting true
b7: bool
b7 = not b3

-- Testing for id function --

-- test expecting a
id a

-- test expecting b
id b

-- Testing for constFalse function --

-- test expecting false
constFalse true

-- test expecting false
constFalse false

-- Testing for constTrue function --

-- test expecting true
constTrue false

-- test expecting true
constTrue true

-- Testing for andp function --

-- test expecting true
andp (mkPair true true)

--test expecting false
andp (mkPair true false)

--test expecting false
andp (mkPair false true)

-- Testing for orp function --

-- test expecting true
orp (mkPair true false)

-- test expecting true
orp (mkPair false true)

-- test expecting false
orp (mkPair true true)

-- test expecting false
orp (mkPair false false)

-- Testing for nandp function --

-- test expecting false
nandp (mkPair true true)

-- test expecting true
nandp (mkPair true false)

-- test expecting true
nandp (mkPair false true)

-- Testing for xorp function --

-- test expecting true
xorp (mkPair true false)

-- test expecting true
xorp (mkPair false true)

-- test expecting false
xorp (mkPair true true)

-- test expecting false
xorp (mkPair false false)

pand_t_t: bool
pand_t_t = pand true true
-- expect true

pand_t_f: bool
pand_t_f = pand true false
-- expect false

pand_f_t: bool
pand_f_t = pand false true
-- expect false

pand_f_f: bool
pand_f_f = pand false false
-- expect false

por_t_t: bool
por_t_t = por true true
-- expect true

por_t_f: bool
por_t_f = por true false
-- expect true

por_f_t: bool
por_f_t = por false true
-- expect true

por_f_f: bool
por_f_f = por false false
-- expect false

pxor_t_t: bool
pxor_t_t = pxor true true
-- expect false

pxor_t_f: bool
pxor_t_f = pxor true false
-- expect true

pxor_f_t: bool
pxor_f_t = pxor false true
-- expect true

pxor_f_f: bool
pxor_f_f = pxor false false
-- expect false

pnand_t_t: bool
pnand_t_t = pnand true true
-- expect false

pnand_t_f: bool
pnand_t_f: pnand true false
-- expect true

pnand_f_t: bool
pnand_f_t = pnand false true
-- expect true

pnand_f_f: bool
pnand_f_f = pnand false false
-- expect true

-- NEW TESTS FOR FINAL PARTIALLY EVALUATED functions

-- test expecting true
and true true

-- test expecting false
and true false
------------------------------------
-- test expecting false
or false false

-- test expecting true
or true false
------------------------------------
-- test expecting false
nand true true

-- test expecting true
nand true false
------------------------------------
-- test expecting false
xor false false

-- test expecting false
xor true true

-- test expecting true
xor true false

uf: bool -> bool
uf = (and true)

s: String
s = toString true
