alias Experimental.Flow

r = File.stream!("test.txt")
|> Flow.from_enumerable()
|> Flow.flat_map(fn line ->
    String.graphemes(line)
   end)
|> Flow.partition
|> Flow.reduce(fn -> %{} end, fn grapheme, map ->
    Map.update(map, grapheme, 1, & &1 + 1)
  end)
|> Enum.sort()

IO.inspect r
