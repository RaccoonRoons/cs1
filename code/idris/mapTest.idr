import list
import bool
import nat

a: list bool
a = map evenb ((S O) :: (S (S O)) :: nil)

b: list bool
b = map oddb ((S O) :: (S (S O)) :: nil)
convertB: Bool -> bool
convertB True = true
convertB False = false

--Function is below
ltFive: Nat -> bool
ltFive n = ite (convertB (n<5))
            true
            false

--expect true
b: bool
b = ltFive 4
