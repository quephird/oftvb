let count_exclamations s =
  let n = ref 0 in
    for i = 0 to (String.length s)-1 do
      if String.get s i = '!'
        then n := !n + 1
    done;
    !n

;;
