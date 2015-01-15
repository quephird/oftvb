let rec occurrences_iter s p sidx pidx r =
  if s = "" || p = "" then
    0
  else if sidx = (String.length s)-1 then
    r
  else
    let cs = String.get s (sidx + pidx)
    and cp = String.get p pidx in
      if cs = cp then      
        if pidx = (String.length p)-1 then
          occurrences_iter s p (sidx+1) 0 (r+1)
        else
          occurrences_iter s p sidx (pidx+1) r
      else
        occurrences_iter s p (sidx+1) 0 r

let occurrences s p =
  occurrences_iter s p 0 0 0

;;