module BoxTest

import Box
import bool
import unit
import nat

box1: Box nat
box1 = mkBox O

n: nat
n = unbox box1
