defmodule Foo do
  defmacro markup(do: block) do
    quote do
      unquote(Macro.postwalk(block, &postwalk/1))
    end
  end

  def postwalk({:bar, _meta, [string]}) do
    quote do
      Foo.baz(unquote(string))
    end
  end

  def postwalk({:bar, _meta, [string, [do: block]]}) do
    quote do
      Foo.boo(unquote(string), unquote(block))
    end
  end

  def postwalk(ast) do
    IO.inspect ast
    ast
  end

  def baz(string) do
    IO.puts "Baz: #{string}"
  end

  def boo(string, block) do
    IO.puts "Boo: #{string}/#{block}"
  end
end
