let midpoint (x1, y1) (x2, y2) = 
  let dx = x2 -. x1
  and dy = y2 -. y1 in
    (x1 +. (dx /. 2.0), y1 +. (dy /. 2.0))

;;
