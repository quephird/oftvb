#use "chapter4/member.ml"

let rec make_set_iter s l =
  match l with
      [] -> s
  | h::t -> if member h s then make_set_iter s t
            else make_set_iter (s @ [h]) t

let make_set l =
  make_set_iter [] l

;;