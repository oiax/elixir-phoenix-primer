c = spawn_link fn -> Counter1.listen(0) end

send(c, :up)
send(c, :up)
send(c, :up)
send(c, :show)

:timer.sleep(100)
