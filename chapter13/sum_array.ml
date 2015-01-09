let sum_array a =
  let s = ref 0 
  and l = Array.length a in
    for i = 0 to (l-1) do 
      s := !s + a.(i) 
    done;
    !s

;;