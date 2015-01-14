let concat_w_buffer ss =
  let buf = Buffer.create 16 in
    for i = 0 to (List.length ss)-1 do
      let s = List.nth ss i in
        Buffer.add_string buf s
    done;
    Buffer.contents buf

;;