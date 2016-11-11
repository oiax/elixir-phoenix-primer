r = Enum.reduce 0..99, {}, fn(elem, acc) ->
  Tuple.append(acc, elem)
end
IO.puts tuple_size(r)
