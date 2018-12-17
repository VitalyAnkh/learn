data Vector  a = V3d a a a deriving (Show)

vplus :: (Num t)=>Vector t->Vector t->Vector t
(V3d i j k) `vplus` (V3d l m n)=V3d (i+l) (j+m) (k+n)

scalarMult :: (Num t)=>Vector t->Vector t->t
(V3d i j k)  `scalarMult` (V3d l m n)=i*l+j*m+k*n
 
vectMult ::(Num t)=>Vector t->t->Vector t
(V3d i j k) `vectMult` m=V3d (i*m) (j*m) (k*m)