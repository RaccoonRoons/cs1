module Box

import eq

data nat = O | S nat

data Box a = mkBox a

unbox: Box a -> a
unbox (mkBox a) = a

eql_box: (eq a) => Box a -> Box a -> bool
eql_box (mkBox v1) (mkBox v2) = eql v1 v2

instance (eq a) => eq (Box a) where
  eql (mkBox v1) (mkBox v2) = eql v1 v2

instance (Serialize a) => Serialize (Box a) where
  toString (mkBox b) = "(" ++ (toString b) ++ ",)"
