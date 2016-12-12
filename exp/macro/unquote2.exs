defmodule Y do
  c = 100

  def foo do
    unquote(c)
  end
end

IO.inspect Y.foo
