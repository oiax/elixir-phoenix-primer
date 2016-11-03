defmodule StringBuffer do
  use GenServer

  def handle_cast({:append, str}, buffer) do
    {:noreply, buffer <> str}
  end

  def handle_cast({:put, str}, _buffer) do
    {:noreply, str}
  end

  def handle_call(:get, _from, buffer) do
    {:reply, buffer, buffer}
  end
end
