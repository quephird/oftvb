let islower c =
  match c with
    'a'..'z' -> true
   | _       -> false;;

let isupper c =
  match c with
    'A'..'Z' -> true
   | _       -> false;;
