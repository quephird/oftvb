let rec count_true l =
  match l with
            [] -> 0
  |  true :: t -> 1 + count_true t
  | false :: t -> count_true t

let rec count_true_iter l n =
  match l with
            [] -> n
  |  true :: t -> count_true_iter t (n+1)
  | false :: t -> count_true_iter t n

let count_true_tco l =
  count_true_iter l 0

;;