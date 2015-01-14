let exclamations_to_periods s =
  String.map (fun c -> if c='!' then '.' else c) s

;;
