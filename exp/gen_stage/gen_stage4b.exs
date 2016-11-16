# mix run gen_stage4b.exs

r = Stream.map(1..10_000_000, fn(_) -> :rand.uniform(10) end)
  |> Enum.reduce(%{}, fn n, map ->
      Map.update(map, n, 1, & &1 + 1)
    end)
  |> Enum.sort()

IO.inspect r

# real 5.07
# user 5.06
# sys 0.10
