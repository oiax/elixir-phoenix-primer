m = %{a: 1, b: 2}
m = Map.merge(m, %{c: 3})
m = Enum.map(m, fn({k, v}) -> {k, v * 2} end)
IO.inspect m
