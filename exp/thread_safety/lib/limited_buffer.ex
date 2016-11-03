defmodule LimitedBuffer do
  def start_link do
    {:ok, spawn_link(fn -> listen("") end)}
  end

  def append(pid, char) do
    IO.puts char
    send(pid, {:append, char})
  end

  def get(pid) do
    ref = make_ref()
    send(pid, {:get, self(), ref})

    receive do
      {^ref, state} -> state
    end
  end

  defp listen(state) do
    receive do
      {:append, char} ->
        if String.length(state) < 3 do
          :rand.uniform(1000) |> :timer.sleep
          listen(state <> char)
        else
          listen(state)
        end
      {:get, sender, ref} ->
        send sender, {ref, state}
        listen(state)
    end
  end
end
