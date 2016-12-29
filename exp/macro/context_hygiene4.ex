defmodule ContextHygiene4 do
  defmacro write_and_read do
    quote do
      a = 1
      ContextHygiene4.read
    end
  end

  defmacro read do
    quote do
      IO.puts var!(a, ContextHygiene4)
    end
  end
end
