c = spawn_link fn -> Counter.listen(0) end

send(c, :up)
send(c, :up)
send(c, :up)
val = Counter.get(c)

IO.puts val
