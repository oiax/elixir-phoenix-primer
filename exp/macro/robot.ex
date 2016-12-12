defmodule Robot do
  def unquote(:hello)(), do: IO.puts "Hello."
  def :bar(), do: IO.puts "Bar."
end
