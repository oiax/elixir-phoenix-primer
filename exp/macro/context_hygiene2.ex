defmodule ContextHygiene2 do
  defmacro write do
    quote do
      var!(a, ContextHygiene2) = 1
    end
  end

  defmacro read do
    quote do
      IO.puts var!(a, ContextHygiene2)
    end
  end
end
