{- 
   Implementación de los árboles binarios en Haskell.
 Incluyendo recorridos del árbol, árboles reflejados e inserción ordenada.
 Tomando la idea de: http://jeremykun.com/2013/04/07/a-sample-of-standard-ml-and-the-treesort-algorithm/ y adaptándola a Haskell.
 -}

{- Definición de un árbol binario. -}
data Tree a = EmptyTree | Node a (Tree a) (Tree a)
             deriving (Show, Eq)


{- Nodo único vacío. -}
singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree


{- Recorridos del árbol. -}
preorder :: Tree a -> [a]
preorder EmptyTree = []
preorder (Node a left right) = [a] ++ preorder left ++ preorder right

inorder :: Tree a -> [a]
inorder EmptyTree = []
inorder (Node a left right) = inorder left ++ [a] ++ inorder right

postorder :: Tree a -> [a]
postorder EmptyTree = []
postorder (Node a left right) = postorder left ++ postorder right ++ [a]


{- Árboles reflejados. -}
reflected :: Tree a -> Tree a
reflected EmptyTree = EmptyTree
reflected (Node a left right) = (Node a (reflected right) (reflected left))


{- Inserción ordenada -}
insert :: (Ord a) => Tree a -> a -> Tree a
insert EmptyTree x = singleton x
insert (Node a left right) x
  | x <= a  = Node a (insert left x) right
  | x > a  = Node a left (insert right x)


{- Tree Sort -}
treeSort :: (Ord a) => [a] -> [a]
treeSort x = inorder $ foldl insert EmptyTree x
