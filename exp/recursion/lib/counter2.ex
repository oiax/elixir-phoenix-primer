defmodule Exp.Counter2 do
  def start_link do
    {:ok, spawn_link(fn -> listen(0) end)}
  end

  def inc(pid), do: send(pid, :inc)

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
      :inc ->
        if val > 1, do: :timer.sleep(3000)
        listen(val + 1)
      {:val, sender, ref} ->
        send sender, {ref, val}
        listen(val)
    end
  end
end
