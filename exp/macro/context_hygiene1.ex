defmodule ContextHygiene1 do
  defmacro write do
    quote do
      var!(a) = 2
    end
  end

  defmacro read do
    quote do
      IO.puts var!(a)
    end
  end
end
