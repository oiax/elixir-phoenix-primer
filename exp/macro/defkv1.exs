# ** (CompileError) defkv1.exs:9: undefined function k/0
#    (stdlib) lists.erl:1338: :lists.foreach/2
#    defkv1.exs:5: (file)
#    (elixir) lib/code.ex:363: Code.require_file/2
defmodule DKV do
  defmacro defkv(kv) do
    quote do
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
