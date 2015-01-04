let rec take_iter n l r =
  match n, l with
    _, [] -> r
  |  0, _ -> r
  | _, h :: t -> take_iter (n-1) t (r @ [h])

let rec take n l =
  take_iter n l []

;;