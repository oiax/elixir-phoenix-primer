alias Experimental.Flow

flow = Flow.from_enumerable(["the quick brown fox"]) |> Flow.flat_map(fn word ->
  String.graphemes(word)
end)

flow = flow |> Flow.partition |> Flow.reduce(fn -> %{} end, fn grapheme, map ->
  Map.update(map, grapheme, 1, & &1 + 1)
end)

IO.inspect Enum.sort(flow)
