type 'a iterable

external array_to_iter: 'a array -> 'a iterable = "%identity"

external from_iter: 'a iterable -> 'a Callbag.t = "callbag-from-iter"
[@@bs.module]

let from_array arr = arr |> array_to_iter |> from_iter
