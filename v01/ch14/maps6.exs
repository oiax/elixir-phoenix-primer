m = %{ x: 1, y: 2, z: 3 }
Enum.each m, fn({ key, value }) ->
  IO.puts "#{key} = #{value}"
end
