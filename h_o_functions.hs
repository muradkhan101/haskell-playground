map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (head:list) = f head:(map' f list)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (head1:list1) (head2:list2) = (f head1 head2):(zipWith' f list1 list2)
