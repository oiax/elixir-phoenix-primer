numbers = [ 2, 3, 5, 7, 11 ]
{ :ok, n } = Enum.fetch(numbers, 1)
IO.inspect n
