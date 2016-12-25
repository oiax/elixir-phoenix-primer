m = %{a: 1, b: 2, c: 3}
for {_, value} <- m do
  IO.puts value
end
