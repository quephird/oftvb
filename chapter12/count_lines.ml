let rec count_lines_iter ch n =
  try
    let _ = input_line ch in
      count_lines_iter ch (n+1)
  with
    End_of_file -> close_in ch; n

let count_lines fn =
  let ch = open_in fn in
    count_lines_iter ch 0

;;