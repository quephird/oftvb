#use "chapter11/tree.ml"

let rec mirror t =
  match t with
  | Lf           -> t
  | Br (x, l, r) ->  Br (x, mirror r, mirror l)

;;