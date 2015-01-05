#use "chapter10/rect.ml"

let rotate r =
  match r with
    Rectangle (w, h) -> if w>h 
                          then Rectangle (h, w)
                          else r 
  | Square (_)       -> r

;;