ages = %{"Alice" => 23, "Bob" => 15, "Charlie" => 48}
Enum.each ages, fn({name, value}) ->
  IO.puts "#{name}: #{value}"
end
