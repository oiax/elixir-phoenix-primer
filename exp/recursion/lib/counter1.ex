defmodule Exp.Counter1 do
  def start_link do
    {:ok, spawn_link(fn -> listen(0) end)}
  end

  def inc(pid), do: send(pid, :inc)

  def val(pid) do
    ref = make_ref()
    send(pid, {:val, self(), ref})

    receive do
      {^ref, val} -> val
    end
  end

  defp listen(val) do
    receive do
      :inc -> listen(val + 1)
      {:val, sender, ref} ->
        send sender, {ref, val}
        listen(val)
    end
  end
end
