#use "chapter6/map.ml"

type 'a nary_tree =
  Leaf
| Branch of 'a * 'a nary_tree list

let rec sum l =
  match l with
    []     -> 0
  | h :: t -> h + sum t

let rec nary_size t =
  match t with
    Leaf           -> 0
  | Branch (_, ts) -> 1 + sum (map nary_size ts)

let rec nary_total t =
  match t with
    Leaf           -> 0
  | Branch (n, ts) -> n + sum (map nary_total ts)

let rec nary_map f t =
  match t with
    Leaf           -> Leaf
    Branch (n, ts) -> Branch ((f n), map (nary_map f) ts)

;;