defmodule Hello2 do
  def greet(name) do
    IO.puts "Hello, #{name}!"
    IO.puts "How are you?"
  end
end

Hello2.greet("Alice")
Hello2.greet("Bob")
