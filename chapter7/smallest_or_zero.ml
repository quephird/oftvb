#use "chapter7/smallest.ml"

let smallest_or_zero l =
  try smallest l with
    Not_found -> 0

;;
