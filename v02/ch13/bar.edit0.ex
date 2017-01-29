defmodule Bar do
  def hello(names) when is_list(names) do

    IO.puts "Hello, #{name}!"
  end

  def hello() when is_map(name) do
    IO.puts "Who are you?"
  end
end
