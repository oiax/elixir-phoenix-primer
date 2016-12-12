defmodule W do
  c = 100

  for x <- [1, 2] do
    def unquote(:"foo#{x}")() do
      unquote(c) + unquote(x)
    end
  end
end

IO.inspect W.foo1
IO.inspect W.foo2
