let rec replace k v d =
  match d with
               [] -> raise Not_found
  | (k', v') :: t when k=k' -> (k, v) :: t
  | (k', v') :: t           -> (k', v') :: replace k v t

;;
