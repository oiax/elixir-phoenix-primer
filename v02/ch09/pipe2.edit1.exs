%{a: 1, b: 2}
  |> Map.merge(%{c: 3})
  |> Enum.map(fn({k, v}) -> {k, v * 2} end)
  |> IO.inspect
