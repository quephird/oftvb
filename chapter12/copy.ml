let rec copy_iter ch1 ch2 =
  try
    let line = input_line ch1 in
      output_string ch2 line;
      output_string ch2 "\n";
      copy_iter ch1 ch2
  with
    End_of_file -> close_in ch1;
                   close_out ch2;
                   ()

let copy fn1 fn2 =
  try
    let ch1 = open_in fn1 in
      try
        let ch2 = open_out fn2 in
          copy_iter ch1 ch2
      with
        _ -> print_string "ERROR: Could not open file to write, ";
             print_string fn2;
             print_newline ();
             close_in ch1
  with
    Sys_error _ -> print_string "ERROR: Could not read file, ";
                   print_string fn1;
                   print_newline ()

;;
