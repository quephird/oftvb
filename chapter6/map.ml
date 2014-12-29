let rec map f l =
  match l with
        [] -> []
  | h :: t -> f h :: map f t

;;