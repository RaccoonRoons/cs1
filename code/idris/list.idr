module list

import nat
import option
import bool
import ite
import eq
import Serialize

data list a = nil | (::) a (list a)

-- return the length of any given list
length: list a -> nat
length nil = O
length (n::l) = S (length l)

(++): list a -> list a -> list a
(++) nil l2 = l2
(++) (h::l1) l2 = h :: (l1 ++ l2)

map: (a -> b) -> list a -> list b
map f nil = nil
map f (h::t) = (f h) :: (map f t)

filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h::t) = ite (f h)
                      (h:: (filter f t))
                      (filter f t)

foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)

foldr': (b -> a -> b) -> list a -> b -> b
foldr' f nil id = id
foldr' f (h::t) id = f (list.foldr' f t id) h

instance (eq a) => eq (list a) where
  eql nil nil = true
  eql (h::t) nil = false
  eql nil (h::t) = false
  eql (h1::t1) (h2::t2) = and (eql h1 h2) (eql t1 t2)

member: (eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ite (eql v h)
                      true
                      (member v t)

toStringList: (Serialize a) => list a -> String
toStringList nil = ""
toStringList (h::nil) = (toString h)
toStringList (h::t) = (toString h) ++ ", " ++ (toStringList t)

instance (Serialize a) => Serialize (list a) where
  toString nil = "[]"
  toString l = "[" ++ toStringList l ++ "]"
