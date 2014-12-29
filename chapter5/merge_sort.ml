let rec length l =
  match l with
      [] -> 0
  | _::t -> 1 + length t

let rec take n l =
  match n, l with
      _, [] -> []
  |   0, _  -> []
  | _, h::t -> h :: take (n-1) t

let rec drop n l =
  match n, l with
      _, [] -> l
  |   0, _  -> l
  | _, h::t -> drop (n-1) t

let rec merge x y =
  match x, y with
             [], _ -> y
  |          _, [] -> x
  | hx::tx, hy::ty -> if hx < hy 
                        then hx :: merge tx y
                        else hy :: merge x ty

let rec merge_sort l =
  match l with
     [] -> l
  | [_] -> l
  | _   -> let half_length = (length l)/2 in
             let left  = take half_length l
             and right = drop half_length l in
               merge (merge_sort left) (merge_sort right)

;;