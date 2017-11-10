--Austin Derbique
--A01967241

data Tree x = Empty | Node Color (Tree x) x (Tree x) deriving (Show)
data Color = Red | Black deriving (Show)

insertElement Empty val = Node Red Empty val Empty
insertElement(Node c left val right) x
 |x==val = Node c left val right
 |x<val = balance(Node c (insertElement left x) val right)
 |x>val = balance(Node c left val (insertElement right x))


balance(Node Black (Node Red (Node Red a x b) y c) z d) = Node Red (Node Black a x b) y (Node Black c z d)
balance(Node Black (Node Red a x (Node Red b y c)) z d) = Node Red (Node Black a x b) y (Node Black c z d)
balance(Node Black a x (Node Red (Node Red b y c) z d)) = Node Red (Node Black a x b) y (Node Black c z d)
balance(Node Black a x (Node Red b y (Node Red c z d))) = Node Red (Node Black a x b) y (Node Black c z d)
balance t = t

height :: Tree x -> Int
height Empty = 0
height (Node c l x r) = 1 + max (height l) (height r)


makeBlack (Node Red l v r) = Node Black l v r
makeBlack t = t

treeInsert t v = makeBlack $insertElement t v

--height $ insertElement Empty [1,2,3,4,5,6,7,8]
