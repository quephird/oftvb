let rec smallest_iter l r f =
  match l with
  |           [] when not f -> raise Not_found
  |                      [] -> r
  | h :: t when h<=0 || h>r -> smallest_iter t r f
  |                  h :: t -> smallest_iter t h true

let smallest l =
  smallest_iter l max_int false

;;