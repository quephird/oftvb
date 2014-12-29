let rec power x n =
  match n with
    0 -> 1
  | 1 -> x
  | _ -> match n mod 2 with
           1 -> x * power x (n-1)
         | _ -> let x2 = power x (n/2) in x2 * x2;;