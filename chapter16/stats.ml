
try
  begin match Sys.argv with
    [|_; filename|] ->
      let stats = Textstat.stats_from_file filename in
        let l = Textstat.lines stats
        and c = Textstat.characters stats
        and w = Textstat.words stats
        and s = Textstat.sentences stats in
          let outputs = [("Words", w); 
                         ("Characters", c); 
                         ("Sentences", s); 
                         ("Lines", l)] in
            List.iter (fun (label, value) ->
                         print_string label;
                         print_string ": ";
                         print_int value;
                         print_newline ()) outputs;
    | _ ->
      print_string "Usage: stats <filename>";
      print_newline ();
  end;
with
  e ->
    print_string "An error occured: ";
    print_string (Printexc.to_string e);
    print_newline ();
    exit 1

