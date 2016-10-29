defmodule Hello4 do
  def greet(name) do
    IO.puts "Hello, #{name}! How are you?"
  end

  def greet do
    IO.puts "Hello! How are you?"
  end
end

Hello4.greet("Alice")
Hello4.greet
