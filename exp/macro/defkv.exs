defmodule DKV do
  defmacro defkv(kv) do
    Enum.map kv, fn {k, v} ->
      quote do
        def unquote(k)(), do: unquote(v)
      end
    end
  end
end

defmodule X do
  import DKV

  defkv [foo: 1, bar: 2]
end

IO.puts X.foo
IO.puts X.bar
