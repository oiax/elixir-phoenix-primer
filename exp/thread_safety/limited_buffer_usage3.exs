alias LimitedBuffer3, as: LimitedBuffer

{:ok, buffer} = GenServer.start_link(LimitedBuffer, "")

for char <- ~w(a b c d e) do
  pid = spawn_link fn ->
    IO.puts char
    GenServer.cast(buffer, {:append, char})
  end

  :timer.sleep(100)

  Process.monitor(pid)
end

for _ <- 0..4 do
  receive do _ -> :noop end
end

IO.puts GenServer.call(buffer, :get)
