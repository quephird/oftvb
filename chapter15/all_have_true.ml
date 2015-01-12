let all_have_true ll =
  let l = List.map (List.mem true) ll in
    not (List.mem false l)
 
;;
