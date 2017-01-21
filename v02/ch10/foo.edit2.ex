defmodule Foo do
  def prepare do
    quote do
      import Enum
    end
  end

  def hello do
    IO.puts "Hello!"
  end
end
