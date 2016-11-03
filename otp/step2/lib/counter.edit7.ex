defmodule Counter do
  use GenServer

  def start_link do
    GenServer.start_link(__MODULE__, 0)
  end

  def up(pid) do
    GenServer.cast(pid, :up)
  end

  def get(pid) do
    GenServer.call(pid, :get)
  end

  def handle_cast(:up, val) do
    {:noreply, val + 1}
  end

  def handle_call(:get, _from, val) do
    {:reply, val, val}
  end
end
