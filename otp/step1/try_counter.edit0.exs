c = spawn_link fn -> Counter.listen(0) end

send(c, :up)
send(c, :up)
send(c, :up)

:timer.sleep(100)