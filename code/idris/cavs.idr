module cavs

import list

data players = LeBronJames | KyrieIrving | KevinLove

-- stats refers to each player's points, rebounds, and assists
data stats = mkStats players Nat Nat Nat

James: stats
James = mkStats LeBronJames 27 7 7

Irving: stats
Irving = mkStats KyrieIrving 21 4 6

Love: stats
Love = mkStats KevinLove 19 12 2

PlayerName: stats -> players
PlayerName (mkStats b p r a) = b

AveragePPG: stats -> Nat
AveragePPG (mkStats b p r a) = p

AverageRPG: stats -> Nat
AverageRPG (mkStats b p r a) = r

AverageAPG: stats -> Nat
AverageAPG (mkStats b p r a) = a

Players: list stats
Players = cons James (cons Irving (cons Love nil))
