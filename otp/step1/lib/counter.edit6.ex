defmodule Counter do
  def start_link do
    pid = spawn_link fn -> listen(0) end
    {:ok, pid}
  end

  def up(pid) do
    send pid, :up
  end

  def get(pid) do
    send pid, {:get, self}

    receive do
      val -> val
    end
  end

  def listen(val) do
    receive do
      :up -> listen(val + 1)
      {:get, from} ->
        send from, val
        listen(val)
    end
  end
end
