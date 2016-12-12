defmodule DKV do
  defmacro defkv(kv) do
    quote bind_quoted: [kv: kv] do
      Enum.map kv, fn {k, v} ->
        def unquote(k)(), do: unquote(v)
      end
    end
  end
end

defmodule X do
  import DKV

  kv = [foo: 1, bar: 2]
  defkv kv
end

IO.puts X.foo
IO.puts X.bar
