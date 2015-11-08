module candyTest

import candy
import listExample
import relation
import bool
import list
import pair

d: String
d = name hershey
-- expect hersheykiss

e: Nat
e = amount hershey
-- expect 5

f: bool
f = chocolate hershey
-- expect true

h: String
h = name lolly

i: Nat
i = amount lolly

j: bool
j = chocolate lolly

-- returns the total number of chocolate candies you have, expect 13 
totalChocolate: Nat
totalChocolate = query2 Candies chocolate amount plus 0

-- returns all of the different names of chocolates, expect "hersheykiss reeses cup"
namesChoc: String
namesChoc = query2 Candies chocolate name (++) ""

-- returns the average number of chocolates in any given group of chocolates, expect 13 2 (aka 6.5)
aveAmount: pair Nat Nat
aveAmount = mkPair (query2 Candies chocolate amount plus 0) (query2 Candies chocolate countOne plus 0)

-- returns the number of different kinds of chocolate there are, expect 2
howmany: Nat
howmany = query2 Candies chocolate countOne plus 0
