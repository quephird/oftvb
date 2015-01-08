#use "chapter6/map.ml";;
#use "chapter12/iter.ml";;

let rec range_iter n r =
  match n with
    0 -> r
  | _ -> range_iter (n-1) r @ [n]

let range n =
  range_iter n []

let times_table n =
  let l = range n in
    map (fun n' -> map (fun n'' -> n'' * n') l) l

let print_line_of_ints ch l =
  iter (fun n -> output_string ch (string_of_int n);
                 output_string ch "\t") l ;
  output_string ch "\n"

let table fn n =
  let ch = open_out fn
  and tt = times_table n in
    iter (fun l -> print_line_of_ints ch l) tt;
    close_out ch

;;