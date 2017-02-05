for x <- [:a, :b, :c, :d] do
  t = {x, 3}

  y = case {x, t} do
    {:a, {_, n}} -> n
    {:b, {_, n}} -> n * 2
    {:c, _} -> 0
    {_, _} -> -1
  end

  IO.puts y
end
