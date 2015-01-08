let rec print_int_list_iter l =
  match l with
    []     -> print_string "]" ; print_newline ()
  | [h]    -> print_int h ; print_int_list_iter []
  | h :: t -> print_int h ; print_string "; " ; print_int_list_iter t

let print_int_list l =
  print_string "[" ; print_int_list_iter l

;;