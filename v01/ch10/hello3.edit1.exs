defmodule Hello3 do
  def message(name) do
    name.upcase!
    "Hello, #{name}!"
  end
end

IO.puts Hello3.message("Alice")
IO.puts Hello3.message("Bob")
