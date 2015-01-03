#use "chapter7/square_root.ml"

let square_root_or_zero n =
  try square_root n with
    Negative_integers_disallowed -> 0

;;