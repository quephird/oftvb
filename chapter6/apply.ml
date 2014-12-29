let rec apply_iter f n arg =
  match n with
  | 0 -> arg
  | _ -> apply_iter f (n-1) (f arg)

let apply f n arg =
  apply_iter f n arg

;;