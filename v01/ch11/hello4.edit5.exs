defmodule Hello4 do
  def greet(name = "world") do
    IO.puts "Hello, #{name}! How are you"
  end

  def greet(name) do
    IO.puts "Hello, #{name}! Howdy?"
  end
end

Hello4.greet("world")
Hello4.greet("Alice")
