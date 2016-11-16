# mix run gen_stage4.exs

alias Experimental.Flow

r = Stream.map(1..100_000_000, fn(_) -> :rand.uniform(10) end)
  |> Flow.from_enumerable()
  |> Flow.partition
  |> Flow.reduce(fn -> %{} end, fn n, map ->
      Map.update(map, n, 1, & &1 + 1)
    end)
  |> Enum.sort()

IO.inspect r
