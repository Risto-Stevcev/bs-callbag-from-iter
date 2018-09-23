module ForEach = struct
  external _f: ('a -> unit) -> ('a Callbag.t -> unit [@bs]) = "callbag-for-each"
  [@@bs.module]

  let f g a = (_f g) a [@bs]
end


let _ =
  CallbagFromIter.from_array [|1;2;3;4|]
  |> ForEach.f Js.log
