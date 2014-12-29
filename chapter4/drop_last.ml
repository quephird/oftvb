let rec drop_last l =
  match l with
         [] -> []
  | h :: [] -> []
  | h :: t  -> h :: drop_last t

let rec drop_last_iter r l =
  match l with
       [] -> r
  | h::[] -> r
  | h::t  -> drop_last_iter (r @ [h]) t

let drop_last_tco l =
  drop_last_iter [] l
;;      