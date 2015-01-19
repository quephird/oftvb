let rec reverse s =
  match s with
    "" -> ""
  | _  -> 
    let h' = String.get s 0 in
      let t' = String.sub s 1 ((String.length s)-1) in
        let h = String.make 1 h'
        and t = reverse t' in 
          String.concat "" ([t] @ [h])

let rec reverse_lines_iter ch_in ch_out =
  try
    let line = input_line ch_in in
      let reversed_line = reverse line in
          output_string ch_out reversed_line;
          output_string ch_out "\n";
          reverse_lines_iter ch_in ch_out
  with
    End_of_file -> close_in ch_in;
                   close_out ch_out;
                   ()

let reverse_lines filename_in filename_out =
  try
    let ch_in = open_in filename_in in
      try
        let ch_out = open_out filename_out in
          reverse_lines_iter ch_in ch_out
      with
      | _ -> close_in ch_in
  with
  | _ -> ()

let main =
  try
    begin match Sys.argv with
      [|_; filename_in; filename_out|] ->
        reverse_lines filename_in filename_out
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

;;