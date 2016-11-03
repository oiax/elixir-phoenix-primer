{:ok, buf} = GenServer.start_link(StringBuffer, "")

for name <- ~w(alice bob charlie) do
  GenServer.cast(buf, {:append, name})
  IO.puts GenServer.call(buf, :get)
end

GenServer.cast(buf, {:put, "world"})
IO.puts GenServer.call(buf, :get)
