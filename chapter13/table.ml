let table n =
  let a = Array.map (fun x -> Array.make n 1) (Array.make n 1) in
    for i = 1 to n do
      for j = 1 to n do 
        a.(i-1).(j-1) <- i*j;
      done;
    done;
    a

;;
