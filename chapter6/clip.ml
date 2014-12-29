let clip n =
  match n with
    | n when n < 1  -> 1
    | n when n > 10 -> 10
    |             _ -> n

let clip_list l =
  map clip l


let clip_list_lambda l =
  map (fun n -> match n with
                | n when n < 1  -> 1
                | n when n > 10 -> 10
                |             _ -> n) l

;;