(* This is the function that actually does the computation. *)
let rec occurrences_iter s p sidx pidx r =
  let last_idx = (String.length s)-1 in
    if s = "" || p = "" then
      (* If either the string or pattern is empty
         then just simply return 0. *)
      0
    else if sidx = last_idx then
      (* If we're at the end of the string,
         then we're done; return what's in
         the accumulator. *)
      r
    else
      (* We have work to do... *)
      let cs = String.get s (sidx + pidx)
      and cp = String.get p pidx in
        if cs = cp then
          (* If the current characters match... *)
          if pidx = (String.length p)-1 then
            (* ... and we're at the end of the pattern,
               then we have complete match! Recurse 
               moving the index of the string by one,
               resetting the pattern index,
               and incrementing the accumulator, ... *)
            occurrences_iter s p (sidx+1) 0 (r+1)
          else
            (* ... otherwise increment the index of pattern,
              leaving the other parameters alone. *)
            occurrences_iter s p sidx (pidx+1) r
        else
          (* If we're here, ther the two characters
             were different, so simply increment the index
             of the string. *)
          occurrences_iter s p (sidx+1) 0 r

(* This is the function that is intended to be called. *)
let occurrences s p =
  occurrences_iter s p 0 0 0

;;