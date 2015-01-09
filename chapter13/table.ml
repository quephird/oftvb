let table n =
  let a = Array.make n [||] in
    for i = 0 to (n-1) do
      let r = Array.make n 0 in
        for j = 0 to (n-1) do 
          r.(j) <- (i+1)*(j+1);
        done;
        a.(i) <- r;
    done;
    a

;;
