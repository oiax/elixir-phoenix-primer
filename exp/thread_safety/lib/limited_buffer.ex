defmodule LimitedBuffer do
  def start_link do
    {:ok, spawn_link(fn -> listen("") end)}
  end

  def append(pid, char) do
    IO.puts char
    send(pid, {:append, char})
  end

  def value(pid) do
    ref = make_ref()
    send(pid, {:value, self(), ref})

    receive do
      {^ref, value} -> value
    end
  end

  defp listen(value) do
    receive do
      {:append, char} ->
        if String.length(value) < 3 do
          :rand.uniform(1000) |> :timer.sleep
          listen(value <> char)
        else
          listen(value)
        end
      {:value, sender, ref} ->
        send sender, {ref, value}
        listen(value)
    end
  end
end
