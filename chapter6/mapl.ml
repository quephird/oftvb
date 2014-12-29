let rec mapl f ls =
  match ls with
  |     [] -> []
  | h :: t -> map f h :: mapl f t

;;