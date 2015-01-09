let reverse_array a =
  let t = ref 0 
  and l = Array.length a in
    for i = 0 to (l/2 - 1) do
      t := a.(i);
      a.(i) <- a.(l-1-i);
      a.(l-1-i) <- !t
    done;

;;