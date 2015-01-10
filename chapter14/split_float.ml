let split_float n =
  if n < 0.0
    then
      let (i, d) = split_float (-. n) in
        (-. i, d)
    else (floor n, n -. (floor n))

;;