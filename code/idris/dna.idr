module dna

import pair
import list
import foo
import nat
import bool
import ite

data base = A | T | G | C

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base G = C
complement_base C = G

complement_strand: list base -> list base
complement_strand nil = nil
complement_strand (h::t) = map complement_base (h::t)

strand1: list (pair base base) -> list base
strand1 l = map fst l

strand2: list (pair base base) -> list base
strand2 l = map snd l

convert: base -> (pair base base)
convert b = (mkPair b (complement_base b))

complete: list base -> list (pair base base)
complete nil = nil
complete (h::t) = map convert (h::t)

equ: base -> base -> nat
equ A A = (S O)
equ T T = (S O)
equ C C = (S O)
equ G G = (S O)
equ _ _ = O

listequ: base -> (list base) -> (list nat)
listequ b nil = nil
listequ b (h::t) = map (equ b) (h::t)

countBase: base -> list base -> nat
countBase b nil = O
countBase b (h::t) = list.foldr add O (listequ b (h::t))
