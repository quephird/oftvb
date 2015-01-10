let uppercase c =
  let i = int_of_char c in
    match i with
      n when n>=97 && n <=122 -> char_of_int (n-32)
    | _                       -> c

let lowercase c =
  let i = int_of_char c in
    match i with
      n when n>=65 && n <=90 -> char_of_int (n+32)
    | _                       -> c

;;