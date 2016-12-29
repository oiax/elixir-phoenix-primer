defmodule ContextHygiene3 do
  defmacro write_and_read do
    quote do
      a = 1
      ContextHygiene3.read
    end
  end

  defmacro read do
    quote do
      IO.puts var!(a)
    end
  end
end
