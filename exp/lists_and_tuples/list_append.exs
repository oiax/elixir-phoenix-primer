list = Enum.reduce 0..99, [], fn(elem, acc) ->
  [elem | acc]
end
Enum.reverse(list)
