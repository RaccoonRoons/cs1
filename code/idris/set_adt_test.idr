module set_adt_test

import set_adt
import bool
import option
import pair
import list
import nat
import eq
import Serialize
import list
import ite

sr1: set nat
sr1 = set_remove (S O) (mkSet ((S O)::(S(S O))::(S(S(S O)))::nil))
-- expect mkSet (S (S O) :: S (S (S O)) :: nil)

sr2: set nat
sr2 = set_remove (S (S O)) (mkSet ((S O)::(S(S(S O)))::(S(S(S(S O))))::nil))
-- expect mkSet (S O :: S (S (S O)) :: S (S (S (S O))) :: nil)

sr3: set bool
sr3 = set_remove true (mkSet(true::false::false::true::false::nil))
-- expect mkSet (false :: false :: false :: nil)

sc1: nat
sc1 = set_cardinality (mkSet (true::true::true::false::true::nil))
-- expect (S(S(S(S(S O)))))

sc2: nat
sc2 = set_cardinality (mkSet ((S O)::(S(S O))::(S(S(S O)))::nil))
-- expect (S(S(S O)))

sm1: bool
sm1 = set_member true (mkSet (true::false::nil))

sm2: bool
sm2 = set_member true (mkSet (false::false::false::nil))
-- expect false

sm3: bool
sm3 = set_member (S O) (mkSet ((S O)::(S(S O))::nil))
-- expect true

sm4: bool
sm4 = set_member (S O) (mkSet ((S(S O))::nil))
-- expect false

su1: set bool
su1 = set_union (mkSet (true::false::nil)) (mkSet (false::true::nil))
-- expect mkSet (false::true::nil)

su2: set bool
su2 = set_union (mkSet (true::nil)) (mkSet (false::nil))
-- expect mkSet (true::false::nil)

su3: set nat
su3 = set_union (mkSet ((S O)::(S(S O))::nil)) (mkSet ((S(S(S O)))::(S(S(S(S O))))::nil))
-- expect mkSet (S O :: S (S O) :: S (S (S O)) :: S (S (S (S O))) :: nil)

si1: set bool
si1 = set_intersection (mkSet (true::nil)) (mkSet (false::false::true::nil))
-- expect mkSet (true::nil)

si2: set nat
si2 = set_intersection (mkSet ((O)::(S O)::(S(S O))::nil)) (mkSet ((S O)::nil))
-- expect mkSet ((S O)::nil)

sd1: set nat
sd1 = set_difference (mkSet ((S O)::(S(S O))::(S(S(S O)))::nil)) (mkSet ((S(S O))::nil))
-- expect mkSet (S O :: S (S (S O)) :: nil)

sd2: set bool
sd2 = set_difference (mkSet (false::false::true::nil)) (mkSet (false::nil))
-- expect mkSet (true :: nil)

sf1: bool
sf1 = set_forall evenb (mkSet ((O)::(S (S O))::nil))
-- expect true

sf2: bool
sf2 = set_forall evenb (mkSet ((S O)::(S (S O))::nil))
-- expect false

se1: bool
se1 = set_exists evenb (mkSet ((S O)::(S(S O))::nil))
-- expect true

se2: bool
se2 = set_exists evenb (mkSet ((S O)::(S(S(S O)))::nil))
--expect false

sw1: option nat
sw1 = set_witness evenb (mkSet ((O)::(S O)::(S(S O))::nil))
-- expect some O

sw2: option nat
sw2 = set_witness evenb (mkSet ((S O)::(S(S(S O)))::nil))
-- expect none

sp1: set (pair nat nat)
sp1 = set_product (mkSet ((S O)::(S(S O))::nil)) (mkSet ((O)::(S(S(S O)))::nil))
-- expect mkSet (mkPair (S O) O :: mkPair (S O) (S (S (S O))) ::
-- mkPair (S (S O)) O :: mkPair (S (S O)) (S (S (S O))) :: nil)

sp2: set (pair nat bool)
sp2 = set_product (mkSet ((O)::(S O)::nil)) (mkSet (true::false::false::true::nil))
-- expect mkSet (mkPair O true :: mkPair O false :: mkPair O false ::
-- mkPair O true :: mkPair (S O) true :: mkPair (S O) false :: mkPair (S O) false :: mkPair (S O) true :: nil)

es1: bool
es1 = eql_set (mkSet ((O)::(S O)::nil)) (mkSet ((S O)::(O)::nil))
-- expect true

es2: bool
es2 = eql_set (mkSet ((O)::nil)) (mkSet ((O)::(S O)::nil))
-- expect false

es3: bool
es3 = eql_set (mkSet (true::false::nil)) (mkSet (false::true::nil))
-- expect true

ss1: String
ss1 = set_toString (mkSet ((S O)::(S (S O))::nil))
-- expect "{sZ, ssZ}"

ss2: String
ss2 = set_toString (mkSet (true::false::nil))
-- expect "{True, False}"
