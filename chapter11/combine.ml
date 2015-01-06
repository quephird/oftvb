#use "chapter8/build_dict_from_pairs.ml"
#use "chapter11/to_tree.ml"

let rec to_dict t =
  match t with
    Lf               -> []
  | Br ((k,v), l, r) -> [(k,v)] @ to_dict l @ to_dict r

let combine_trees t1 t2 =
  let d1 = to_dict t1
  and d2 = to_dict t2 in
    let d = d1 @ d2 in
      let d' = build_dict_from_pairs d in
        to_tree d'

;;
