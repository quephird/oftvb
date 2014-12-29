#use "chapter6/map.ml"

let rec calm_rec l =
  match l with
          [] -> l
  | '!' :: t -> '.' :: calm_rec t
  |   h :: t -> h :: calm_rec t


let calm l =
  map (fun c -> match c with 
                  '!' -> '.'
                |  _  -> c) l

;;   