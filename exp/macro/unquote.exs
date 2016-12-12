q = quote do
  unquote(:foo)
end

IO.inspect q

q = quote do
  def unquote(:bar) do
    "Bar"
  end
end

IO.inspect q

q = quote do
  def :bar do
    "Bar"
  end
end

IO.inspect q

fun_name = :bar

q = quote do
  def unquote(fun_name)(a) do
    "Bar" <> a
  end
end

IO.inspect q
