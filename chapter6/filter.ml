let rec filter_iter f l =
  match l with
  |              [] -> l
  | h :: t when f h -> h :: filter_iter f t
  |          _ :: t -> filter_iter f t

let filter f l =
  filter_iter f l

;;