#use "chapter6/map.ml"

let halve_all l =
  (* We need to flip the args here so that we can make a
     useable partial in this exercise. *)
  let flip_div d n = n / d in
    map (flip_div 2) l

;;