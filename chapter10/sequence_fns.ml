#use "chapter10/sequence.ml"

let rec maps f s =
  match s with
    Nil -> Nil
  | Cons (h, t) -> Cons ((f h), (maps f t))

let rec drops n s =
  match n, s with
    0, _           -> s
  | _, Nil         -> s
  | n, Cons (h, t) -> drops (n-1) t

let rec takes n s =
  match n, s with
    0, _           -> Nil
  | _, Nil         -> s
  | n, Cons (h, t) -> Cons(h, takes (n-1) t)

;;