defmodule ContextHygiene0 do
  defmacro read do
    quote do
      IO.puts var!(a)
    end
  end
end
