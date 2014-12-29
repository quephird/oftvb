let rec reverse l =
  match l with
      [] -> []
  | h::t -> reverse t @ [h]

let make_palindrome l =
  l @ reverse l

let is_palindrome l =
  l = reverse l

;;