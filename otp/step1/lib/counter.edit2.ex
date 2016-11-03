defmodule Counter do
  def listen(val) do
    receive do
      :up -> listen(val + 1)
      {:get, from} ->
        send from, val
        listen(val)
    end
  end
end
