alias Experimental.Flow
r = File.stream!("test.txt")
|> Flow.from_enumerable()
|> Flow.flat_map(fn line ->
    for word <- String.split(line, " "), do: {word, 1}
   end)
|> Flow.partition
|> Flow.reduce(fn -> %{} end, fn grapheme, map ->
    Map.update(map, grapheme, 1, & &1 + 1)
  end)
|> Enum.to_list()

IO.inspect r
