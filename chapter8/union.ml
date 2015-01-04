#use "chapter8/dict.ml"

let rec union_iter b r =
  match b with
            [] -> r
  | (k,v) :: t -> if key_exists k r
                    then union_iter t r
                    else union_iter t ((k,v) :: r)

let union a b =
  union_iter b a

;;