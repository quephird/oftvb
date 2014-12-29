let rec insertion_sort2 l =
  let rec insert e l =
    match l with
        [] -> [e]
    | h::t -> if e <= h 
                   then e :: h :: t
                   else h :: insert e t in
    match l with
        [] -> l
    | h::t -> insert h (insertion_sort2 t)

;;