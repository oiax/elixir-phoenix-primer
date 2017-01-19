map = %{a: 1, b: 2}
map = Enum.into(map, %{}, fn({k, v}) -> {k, v * 2} end)
IO.inspect map
