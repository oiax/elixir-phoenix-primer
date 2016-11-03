c = Counter.start_link

Counter.up(c)
Counter.up(c)
Counter.up(c)
val = Counter.get(c)

IO.puts val
