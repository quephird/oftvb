#use "chapter10/rect.ml"

let area r =
  match r with
    Rectangle (w, l) -> w*l
  | Square(s)        -> s*s

;;
