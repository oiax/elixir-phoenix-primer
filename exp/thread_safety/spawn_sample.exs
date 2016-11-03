pid = spawn fn ->
  :timer.sleep(1000)
  IO.puts "Finished!"
end

Process.monitor(pid)
receive do _ -> :noop end
