let rec reverse_iter r l =
  match l with
      [] -> r
  | h::t -> reverse_iter (h::r) t

let reverse_tco l =
  reverse_iter [] l

;;