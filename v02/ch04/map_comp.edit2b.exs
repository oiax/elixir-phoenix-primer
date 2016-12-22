m = %{a: 1, b: 2, c: 3}
for value <- Map.values(m) do
  IO.puts value
end
