u = %User{name: "foo", email: "foo@example.com"}
for {key, value} <- Map.from_struct(u) do
  IO.puts "#{key} = #{value}"
end
