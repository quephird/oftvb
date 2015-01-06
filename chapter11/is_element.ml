#use "chapter11/tree.ml"

let rec is_element e t =
  match t with
    Lf           -> false
  | Br (x, l, r) -> if x=e
                      then true
                      else is_element e l || is_element e r

;;