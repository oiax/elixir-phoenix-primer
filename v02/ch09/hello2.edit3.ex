defmodule Hello2 do
  def greet1 do
    alias IO, as: X

    X.puts "Hello!"
  end

  def greet2 do
    X.puts "Hi!"
  end
end
