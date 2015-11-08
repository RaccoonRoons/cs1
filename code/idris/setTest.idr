module setTest

import set
import eq
import nat
import list
import Serialize

s0: set nat
s0 = new_set

s1: set nat
s1 = set_insert (S O) s0

s2: set nat
s2 = set_insert (S O) s1

es: bool
es = eql ((S O) :: nil) ((S O) :: nil)
-- expect true

es2: bool
es2 = eql ((S (S O)) :: nil) ((S O) :: nil)
-- expect false

stringy1: String
stringy1 = toString (mkSet ((S O) :: nil))
-- expect "[sZ]"

stringy2: String
stringy2 = toString (mkSet ((S (S O)) :: nil))
-- expect "[ssZ]"
