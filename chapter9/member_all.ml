#use "chapter4/count_true.ml"
#use "chapter4/length.ml"
#use "chapter4/member.ml"
#use "chapter6/map.ml"

let member_all e l =
  let list_count = length l
  and member_count = count_true (map (member e) l) in
    list_count = member_count

;;
