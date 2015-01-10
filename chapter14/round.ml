let round n =
  let c = floor n in
    let d = (n -. c) in
      if d<0.5
        then c
        else c +. 1.0

;;
