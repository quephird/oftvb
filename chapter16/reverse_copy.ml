try
  begin match Sys.argv with
    [|_; filename_in; filename_out|] ->
      Reverse.reverse_lines filename_in filename_out
    | _ ->
      print_string "Usage: stats <filename_in> <filename_out>";
      print_newline ();
  end;
with
  e ->
    print_string "An error occured: ";
    print_string (Printexc.to_string e);
    print_newline ();
    exit 1
