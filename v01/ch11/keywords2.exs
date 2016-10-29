defmodule Hello do
  def greet(name, options) do
    if options[:polite] do
      IO.puts "Hello, #{name}! How are you?"
    else
      IO.puts "Hello, #{name}!"
    end
  end
end

Hello.greet("Alice", polite: false)
Hello.greet("Bob", polite: true)
