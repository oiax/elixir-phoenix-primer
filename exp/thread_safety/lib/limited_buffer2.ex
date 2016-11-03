defmodule LimitedBuffer2 do
  use GenServer

  def start_link do
    GenServer.start_link(__MODULE__, "")
  end

  def append(pid, char) do
    IO.puts char
    GenServer.cast(pid, {:append, char})
  end

  def value(pid) do
    GenServer.call(pid, :value)
  end

  def handle_cast({:append, char}, value) do
    if String.length(value) < 3 do
      :rand.uniform(1000) |> :timer.sleep
      {:noreply, value <> char}
    else
      {:noreply, value}
    end
  end

  def handle_call(:value, _from, value) do
    {:reply, value, value}
  end
end
