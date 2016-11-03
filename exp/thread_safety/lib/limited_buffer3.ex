defmodule LimitedBuffer3 do
  use GenServer

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
