#use "chapter11/tree.ml"

let rec have_same_shape t1 t2 =
  match t1, t2 with
    Lf, Lf     -> true
  | Lf, _      -> false
  | _, Lf      -> false
  | Br(_, l1, r1), Br(_, l2, r2) -> have_same_shape l1 l2 && have_same_shape r1 r2 

;;