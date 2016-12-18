defmodule X do
  def paren(content) do
    acc = "("
    acc = acc <> content
    acc = acc <> ")"
    acc
  end

  def a do
    "A"
  end

  def b do
    "B"
  end
end

defmodule Y do
  import X

  def foo do
    paren(
      a <>
      paren(
        if true do
          a <> b
        else
          b
        end
      ) <>
      b
    )
  end
end

IO.puts Y.foo # -> "(A(AB)B)" -- OK
