m = %{a: 1, b: 2, c: 3}
for key <- Map.keys(m) do
  IO.puts key
end
