numbers = [ 2, 3, 5, 7, 11 ]

# f = fn(n) ->
#   IO.puts n
# end
#
# Enum.each numbers, f

# Enum.each(numbers, fn(n) ->
#   IO.puts n
# end)
Enum.each(numbers), fn(n) ->
  IO.puts n
end
