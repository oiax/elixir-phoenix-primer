defmodule Hello2 do
  import IO, only: [puts: 1]

  def greet1 do
    puts "Hello!"
  end

  def greet2 do
    puts "Hi!"
  end
end
