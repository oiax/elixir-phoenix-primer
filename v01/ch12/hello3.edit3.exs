defmodule Hello3 do
  def message do
    "Hello, world!"
  end

  def message(name) do
    "Hello, #{name}!"
  end
end

IO.puts Hello3.message("Alice")
IO.puts Hello3.message("Bob")
IO.puts Hello3.message
