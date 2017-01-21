defmodule Foo do
  defmacro prepare do
    quote do
      import Enum
    end
  end

  def hello do
    IO.puts "Hello!"
  end
end
