u = %User{name: "foo", email: "foo@example.com"}
for {key, value} <- u do
  IO.puts "#{key} = #{value}"
end
