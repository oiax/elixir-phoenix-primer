defmodule Hello do
  def greet(name, options) do
    IO.puts "#{options[:word]}, #{name}!"
  end
end

Hello.greet("Alice", word: "Hello")
Hello.greet("Bob", word: "Howdy")
