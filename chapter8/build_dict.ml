let rec build_dict ks vs =
  match ks, vs with
                [], [] -> []
  |             [], _  -> raise (Invalid_argument "Key and value lists need to be same length.")
  |              _, [] -> raise (Invalid_argument "Key and value lists need to be same length.")
  | kh :: kt, vh :: vt -> (kh,vh) :: build_dict kt vt

;;

