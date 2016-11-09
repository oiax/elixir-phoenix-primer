defmodule Hello4 do
  def greet(name = "world") do
    IO.puts "Hello, #{name}! How are you?"
  end
end

Hello4.greet("world")
