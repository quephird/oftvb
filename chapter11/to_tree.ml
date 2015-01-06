#use "chapter11/insert.ml"

let rec to_tree d =
  match d with
    []          -> Lf
  | (k,v) :: t  -> insert (to_tree t) k v

;;