defmodule Foo do
  def hello(names) when is_list(names) do
    for name <- names do
      Foo.hello(name)
    end
  end

  def hello(%{name: name}) do
    IO.puts "Hello, #{name}!"
  end

  def hello(_) do
    IO.puts "Who are you?"
  end
end
