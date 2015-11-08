module listTest

import list
import nat
import bool
import eq
import Serialize

l1: list nat
l1 = nil

l2: list nat
l2 = O::nil

l3: list nat
l3 = (O::(S O)::nil)

-- test expecting O
l4: nat
l4 = length l1

l5: list Bool
l5 = True :: False :: True :: True :: nil

labmapExample: list bool
labmapExample = map evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

labfilterExample: list nat
labfilterExample = filter evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

isTwo: bool
isTwo = (member (S (S O)) labfilterExample)

s: String
s = toString l3

mem1: bool
mem1 = member (S O) nil
-- expect false

mem2: bool
mem2 = member (S O) ((S O) :: (S (S O)) :: nil)
-- expect true

mem3: bool
mem3 = member (S O) ((S (S O)) :: nil)
-- expect false

mem4: bool
mem4 = member (S O) ((S (S (S (S O)))) :: (S (S O)) :: (S O) :: nil)
-- expect true

eq2: bool
eq2 = eql ((S O) :: nil) ((S O) :: nil)
-- expect true

eq3: bool
eq3 = eql ((S O :: nil)) ((S (S O)) :: nil)
-- expect false

stringy1: String
stringy1 = toString ((S (S (S O))) :: nil)
-- expect "[sssZ]"

stringy2: String
stringy2 = toString ((S O)::(S (S O))::(S (S (S O)))::nil)
-- expect "[sZ, ssZ, sssZ]"
