defmodule Hello2 do
  def greet1 do
    import IO, only: [puts: 1]

    puts "Hello!"
  end

  def greet2 do
    IO.puts "Hi!"
  end
end
