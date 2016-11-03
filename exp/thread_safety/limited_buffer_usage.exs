{:ok, lb} = LimitedBuffer.start_link

for char <- ~w(a b c d e) do
  pid = spawn_link fn ->
    LimitedBuffer.append(lb, char)
  end

  :timer.sleep(100)

  Process.monitor(pid)
end

for _ <- 0..4 do
  receive do _ -> :noop end
end

IO.puts LimitedBuffer.get(lb)
