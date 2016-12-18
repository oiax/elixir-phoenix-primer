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
      acc = "("
      acc = acc <> unquote(expression)
      acc = acc <> ")"
      acc
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
    acc = acc <> paren do
      a
      acc = acc <> paren do
        a
        b
      end
    end
  end
end

IO.puts Y.foo # -> "(A(AAB))" -- NG
