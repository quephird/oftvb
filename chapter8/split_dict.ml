let rec split_dict_iter d r =
  match d, r with
                 [], _ -> r
| (k,v) :: t, (ks, vs) -> split_dict_iter t (k :: ks, v :: vs)

let split_dict d =
  split_dict_iter d ([],[])

;;