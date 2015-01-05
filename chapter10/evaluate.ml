let rec power n e =
  match n, e with
    _, 0 -> 1
  | _, 1 -> n
  | _, e -> n * power n (e-1)

type expr =
  Num of int
| Add of expr * expr
| Subtract of expr * expr
| Multiply of expr * expr
| Divide of expr * expr
| Power of expr * expr

let rec evaluate e =
  match e with
    Num n             -> n
  | Add (e1, e2)      -> evaluate e1 + evaluate e2
  | Subtract (e1, e2) -> evaluate e1 - evaluate e2
  | Multiply (e1, e2) -> evaluate e1 * evaluate e2
  | Divide (e1, e2)   -> evaluate e1 / evaluate e2
  | Power (e1, e2)    -> power (evaluate e1) (evaluate e2)

;;