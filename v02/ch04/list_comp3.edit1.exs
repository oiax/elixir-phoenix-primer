list = ~W(x y z)
for {c, i} <- Enum.with_index(list) do
  IO.puts "#{i + 1}. #{c}"
end

Enum.each list, &IO.puts(&1)
