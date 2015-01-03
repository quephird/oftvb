exception Negative_integers_disallowed

let rec square_root_iter n r =
  if r*r <= n
    then square_root_iter n (r+1)
    else r-1

let square_root n =
  if n < 0
    then raise Negative_integers_disallowed
    else square_root_iter n 0

;;