defmodule X do
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
      a |>
      b |>
      paren do
        b
      end |>
      b
    end
  end
end

IO.puts Y.foo # -> "(AB(B)B)" -- OK
