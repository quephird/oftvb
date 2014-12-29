let rec reverse_insert e l =
  match e, l with
      _, [] -> [e]
  | _, h::t -> if e >= h 
                 then e :: h :: t
                 else h :: reverse_insert e t

let rec reverse_sort l =
  match l with
      [] -> l
  | h::t -> reverse_insert h (reverse_sort t)

;;
