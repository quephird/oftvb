let rec count_keys_iter d r =
  match d with
            [] -> r
  | (_,_) :: t -> count_keys_iter t (r+1)

let count_keys d =
  count_keys_iter d 0

;;
