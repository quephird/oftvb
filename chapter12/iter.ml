let rec iter f l =
  match l with
    [] -> ()
  | h :: t -> f h; iter f t

;;