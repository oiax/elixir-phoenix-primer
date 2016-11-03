c = spawn_link fn -> Counter.listen(0) end

Counter.up(c)
Counter.up(c)
Counter.up(c)
val = Counter.get(c)

IO.puts val
