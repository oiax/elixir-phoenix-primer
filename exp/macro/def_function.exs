q1 = quote do
  def unquote(:bar) do
    "Bar"
  end
end

IO.inspect q1

q2 = quote do
  def :bar do
    "Bar"
  end
end

IO.inspect q2
