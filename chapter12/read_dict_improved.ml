let rec read_dict_improved () =
  let l = read_line () in
    if l = "" then [] else 
      try
        let i = int_of_string l in
          let name = read_line () in
            (i, name) :: read_dict_improved ()
  with
    Failure "int_of_string" ->
      print_string "Please enter a valid integer.";
      print_newline ();
      read_dict_improved ();

;;