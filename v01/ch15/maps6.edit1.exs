m = %{ x: 1, y: 2, z: 3 }
for { key, value } <- m do
  IO.puts "#{key} = #{value}"
end
