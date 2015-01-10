#use "chapter14/star.ml"

let plot f x1 x2 step =
  let x = ref x1 in
    while !x <= x2 do
      star (f !x);
      x := !x +. step;
    done

;;