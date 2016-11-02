defmodule Exp.StringBuffer do
  def start_link do
    {:ok, spawn_link(fn -> listen("") end)}
  end

  def append(pid, string), do: send(pid, {:append, string})

  def val(pid, timeout \\ 2000) do
    ref = make_ref()
    send(pid, {:val, self(), ref})

    receive do
      {^ref, val} -> val
    after timeout -> exit(:timeout)
    end
  end

  defp listen(val) do
    receive do
      {:append, string} ->
        listen(val <> string)
      {:val, sender, ref} ->
        send sender, {ref, val}
        listen(val)
    end
  end
end
