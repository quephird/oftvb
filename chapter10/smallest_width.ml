#use "chapter6/insertion_sort_comp.ml"
#use "chapter6/map.ml"

let width r =
  match r with
    Rectangle (w, _) -> w
  | Square (s)       -> s

let compare_rects r1 r2 =
  width r1 < width r2

let sort_by_width rs =
  insertion_sort (map rotate rs) compare_rects

;;