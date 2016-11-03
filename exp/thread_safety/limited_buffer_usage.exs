{:ok, lb} = LimitedBuffer.start_link

for char <- ~w(a b c d e) do
  spawn_link fn ->
    LimitedBuffer.append(lb, char)
  end
end

:timer.sleep(300)

IO.puts LimitedBuffer.value(lb)
