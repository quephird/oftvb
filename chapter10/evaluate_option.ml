#use "chapter10/evaluate.ml"
#use "chapter10/option.ml"

let evaluate_option e =
  try Some (evaluate e) with
    Division_by_zero -> None

;;