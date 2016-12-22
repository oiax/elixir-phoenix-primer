m = %{a: 1, b: 2, c: 3}
for {key, value} <- m do
  IO.puts "#{key} = #{value}"
end
