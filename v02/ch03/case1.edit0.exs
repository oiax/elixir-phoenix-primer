t = {:a, 3}

x = case t do
  {:a, n} -> n
  {:b, n} -> n * 2
  {:c, _} -> 0
  _ -> -1
end

IO.puts x
