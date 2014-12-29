let rec triangle n = 
  match n with
     1 -> n
   | _ -> n + triangle (n-1);;