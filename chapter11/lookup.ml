#use "chapter11/tree.ml"

let rec lookup d k =
  match d with
    Lf -> None
  | Br ((k', v), l, r) -> if k=k' then Some v
                          else if k<k' then lookup l k
                          else lookup r k

;;
