module Candy

import bool
import relation
import list
import pair

||| record type that defines a candy in terms of the name of the candy, how many
||| pieces of that candy you have, and whether or not that candy is chocolate

record Candy where
    constructor MkCandy
    name: String
    amount: Nat
    chocolate: bool

hershey: Candy
hershey = MkCandy "hersheykiss" 5 true

lolly: Candy
lolly = MkCandy "lollipop" 7 false

reeses: Candy
reeses = MkCandy " reesescup" 8 true

Candies: list Candy
Candies = hershey :: lolly :: reeses :: nil
