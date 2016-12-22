list = ~W(x y z)
for t < Enum.with_index(list) do
  i = elem(t, 0)
  c = elem(t, 1)
  IO.puts "#{i + 1}. #{c}"
end
