let rec three_int_tuple_iter l n =
  match l, n with
    f :: s :: t :: [], 0 -> (f, s, t)
  | l, _                 -> try
                              let i = read_int () in
                                 three_int_tuple_iter (l @ [i]) (n-1)
                            with
                              Failure "int_of_string" ->
                                print_string "AAARRRGGGHHH!!! Enter a valid integer!" ;
                                print_newline ();
                                three_int_tuple_iter l n

let three_int_tuple () =
  three_int_tuple_iter [] 3

;;