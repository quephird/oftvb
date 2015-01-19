(* Text statistics *)

type stats = int * int * int * int

(* Utility functions *)

let lines (l, _, _, _) = l
let characters (_, c, _, _) = c
let words (_, _, w, _) = w
let sentences (_, _, _, s) = s

let rec string_to_char_list s =
  match s with
    "" -> []
  | _  -> let h = String.get s 0
          and t = String.sub s 1 ((String.length s)-1) in
            h :: string_to_char_list t

(* Read statistics from a channel *)

let rec stats_from_channel_iter ch (l, c, w, s) =
  try
    let line = input_line ch in
      let chars = string_to_char_list line in
        let end_chars = List.filter (fun c ->
                                       match c with
                                         '.' | '?' | '!' -> true
                                       | _               -> false) chars
        and spaces = List.filter (fun c ->
                                    match c with
                                      ' ' -> true
                                    | _   -> false) chars in
          let dl = 1
          and dc = List.length chars
          and dw = List.length spaces 
          and ds = List.length end_chars in
            stats_from_channel_iter ch (l+dl, c+dc, w+dw, s+ds)
  with
  | End_of_file -> (l, c, w, s)

let stats_from_channel ch = 
  stats_from_channel_iter ch (0, 0, 0, 0)

(* Read statistics, given a filename; exceptions are not handled *)

let stats_from_file filename =
  let ch = open_in filename in
    let result = stats_from_channel ch in
      close_in ch;
      result

;;