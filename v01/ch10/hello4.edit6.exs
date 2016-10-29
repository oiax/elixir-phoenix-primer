defmodule Hello4 do
  def greet(name) do
    case name do
      "world" ->
        IO.puts "Hello, #{name}! How are you?"
      _ ->
        IO.puts "Hello, #{name}! Howdy?"
    end
  end
end

Hello4.greet("world")
Hello4.greet("Alice")
