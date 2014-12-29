let rec power x n = 
  if n = 0 then 1
  else if n = 1 then x
       else if n mod 2 = 1 then x * power x (n-1)
            else let t = power x (n/2) in t * t;;
