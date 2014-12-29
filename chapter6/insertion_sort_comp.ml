let rec insert e l comp =
  match e, l with
      _, [] -> [e]
  | _, h::t -> if comp e h 
                 then e :: h :: t
                 else h :: insert e t comp

let rec insertion_sort l comp =
  match l with
      [] -> l
  | h::t -> insert h (insertion_sort t comp) comp

;;
