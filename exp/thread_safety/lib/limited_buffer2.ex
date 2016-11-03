defmodule LimitedBuffer2 do
  use GenServer

  def start_link do
    GenServer.start_link(__MODULE__, "")
  end

  def append(pid, char) do
    IO.puts char
    GenServer.cast(pid, {:append, char})
  end

  def get(pid) do
    GenServer.call(pid, :get)
  end

  def handle_cast({:append, char}, state) do
    if String.length(state) < 3 do
      :rand.uniform(1000) |> :timer.sleep
      {:noreply, state <> char}
    else
      {:noreply, state}
    end
  end

  def handle_call(:get, _from, state) do
    {:reply, state, state}
  end
end
