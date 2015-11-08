module colors

import bool
import pair

%default total

data colors = red | green | blue | yellow | magenta | cyan

compliment: colors -> colors
compliment red = cyan
compliment cyan = red
compliment blue = yellow
compliment yellow = blue
compliment green = magenta
compliment magenta = green

additive: colors -> bool
additive red = true
additive blue = true
additive green = true
additive _ = false

subtractive: colors -> bool
subtractive c = not (additive c)

compliments: pair colors colors -> bool
compliments (mkPair red cyan) = true
compliments (mkPair cyan red) = true
compliments (mkPair yellow blue) = true
compliments (mkPair blue yellow) = true
compliments (mkPair green magenta) = true
compliments (mkPair magenta green) = true
compliments (mkPair _ _) = false

mixink: pair colors colors -> colors
mixink (mkPair red blue) = green
mixink (mkPair blue red) = green
mixink (mkPair green blue) = red
mixink (mkPair green red) = blue
mixink (mkPair magenta yellow) = red
mixink (mkPair yellow magenta) = red
mixink (mkPair cyan yellow) = green
mixink (mkPair yellow cyan) = green
mixink (mkPair magenta cyan) = blue
mixink (mkPair cyan magenta) = blue








