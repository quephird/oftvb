#use "chapter4/take.ml"

let first n l =
  match l with
      [] -> n
  | h::t -> h

let first_all n ls =
  map (first n) ls

;;