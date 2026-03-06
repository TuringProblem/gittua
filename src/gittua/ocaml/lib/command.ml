type t =
  | Clone
  | RugPull
  | Status
  | Branch
  | Quit

let parse = function
  | "cl" -> Some Clone
  | "rugPull" -> Some RugPull
  | "s" -> Some Status
  | "b" -> Some Branch
  | "q" -> Some Quit
  | _ -> None
