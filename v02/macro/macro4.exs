defmodule X do
  defmacro v(expression) do
    quote do
      var!(acc) = var!(acc) <> unquote(expression)
    end
  end

  def paren(do: expression) do
    acc = "("
    acc = acc <> expression
    acc = acc <> ")"
    acc
  end

  def paren(acc, do: expression) do
    acc = acc <> "("
    acc = acc <> expression
    acc = acc <> ")"
    acc
  end

  def a do
    "A"
  end

  def a(acc) do
    acc <> "A"
  end

  def b do
    "B"
  end

  def b(acc) do
    acc <> "B"
  end
end

defmodule Y do
  import X

  def foo do
    paren do
      acc = ""
      v a
      v b
      v(paren do
        v a
      end)
    end
  end
end

IO.puts Y.foo # -> "(AB(B)B)" -- OK
