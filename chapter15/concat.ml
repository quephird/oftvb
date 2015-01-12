#use "chapter4/reverse_tco.ml"

let rec concat_iter l1 l2 =
  match l1 with
    []     -> l2
  | h :: t -> concat_iter t (h :: l2)

let concat l1 l2 =
  concat_iter (reverse_tco l1) l2

;;
