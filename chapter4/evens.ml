let rec evens l =
  match l with
             [] -> []
  |     _ :: [] -> []
  | _ :: s :: t -> s :: evens t;;