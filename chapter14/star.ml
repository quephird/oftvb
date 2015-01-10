let star n =
  if n < 0.0 || n > 1.0 
    then
      print_newline ()
    else
      let s = int_of_float (floor (n *. 50.0)) in
        for i = 1 to (s-1) do
          print_char ' '
        done;
        print_char '*';
        print_newline ()

;;
