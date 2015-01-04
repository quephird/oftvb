#use "chapter8/dict.ml"

let rec build_dict_from_pairs_iter l r =
  match l with
    [] -> r
  | (k,v) :: t -> if key_exists k r 
                    then build_dict_from_pairs_iter t r
                    else build_dict_from_pairs_iter t ((k,v) :: r)

let build_dict_from_pairs l =
  build_dict_from_pairs_iter l []

;;