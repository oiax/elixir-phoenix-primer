# mix run gen_stage4.exs

alias Experimental.Flow

r = Stream.map(1..10_000_000, fn(_) -> :rand.uniform(10) end)
  |> Flow.from_enumerable
  |> Flow.partition(stages: 8)
  |> Flow.reduce(fn -> %{} end, fn n, map ->
      Map.update(map, n, 1, & &1 + 1)
    end)
  |> Enum.sort()

IO.inspect r

# real 6.80
# user 10.11
# sys 0.51
