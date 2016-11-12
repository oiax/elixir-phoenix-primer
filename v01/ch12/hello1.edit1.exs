defmodule Hello1 do
  def greet(name) do
    IO.puts "Hello, #{name}!"
  end
end

Hello1.greet "Alice"
Hello1.greet "Bob"
