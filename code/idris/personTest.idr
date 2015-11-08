-- And now here's the key idea: The
-- names of the fields are automatically
-- names of projection functions! Here
-- we get out the age of person, p.
t: Nat
t = age guy1
-- expect 12

-- Here we get the name of person p.
n: String
n = name guy1
-- expect "Tommy"

m: bool
m = adult guy1
