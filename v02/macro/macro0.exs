defmodule X do
  defmacro builder(fn_name, do: expression) do
    quote do
      def unquote(fn_name)(var!(acc) \\ "") do
        unquote(expression)
        var!(acc)
      end
    end
  end

  defmacro paren(do: expression) do
    quote do
      var!(acc) = var!(acc) <> "("
      var!(acc) = var!(acc) <> unquote(expression)
      var!(acc) = var!(acc) <> ")"
    end
  end

  defmacro a do
    quote do
      var!(acc) = var!(acc) <> "A"
    end
  end

  defmacro b do
    quote do
      var!(acc) = var!(acc) <> "B"
    end
  end
end

defmodule Y do
  import X

  builder(:foo) do
    paren do
      a
      paren do
        a
        b
      end
    end
  end
end

IO.puts Y.foo # -> "((A((A(AB))" -- NG
