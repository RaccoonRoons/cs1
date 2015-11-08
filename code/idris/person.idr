module Person

import bool
import list

||| A record type that is equivalent to:
||| (data Person = mkPerson String nat bool)
||| but where we give names to fields.
||| A person has a name, an age in
||| years, and is or is not female
record Person where
    constructor MkPerson
    name: String
    age: Nat
    height: Nat
    gender: bool

-- An example value of type Person
guy1: Person
guy1 = MkPerson "Tommy" 12 56 false

guy2: Person
guy2 = MkPerson "Billy" 19 65 false

guy3: Person
guy3 = MkPerson "Joe" 34 72 false

girl1: Person
girl1 = MkPerson "Sara" 21 64 true

girl2: Person
girl2 = MkPerson "Hermoine" 23 66 true

girl3: Person
girl3 = MkPerson "Jill" 17 67 true

people: list Person
people = guy1 :: guy2 :: guy3 :: girl1 :: girl2 :: girl3 :: nil

mapAge: list Person -> list Nat
mapAge nil = nil
mapAge (h::t) = (age h)::(mapAge t)

ages: list Nat
ages = mapAge people
