maximum' ::(Ord a)=> [a]->a
maximum' []=error "maximun of empty list"
maximum' [x]=x
maximum' (x:xs)
    | x > maxTail=x
    | otherwise = maxTail
    where maxTail= maximum' xs

maximum_ ::(Ord a)=>[a]->a
maximum_ []=error "maximun of empty list"
maximum_ [x]=x
maximum_ (x:xs)=max x (maximum_ xs)

replicate' ::(Num i, Ord a)=> i->a->[a]
replicate' i a
    | i<=0=[]
    | otherwise=a:replicate' (i-1) a
    