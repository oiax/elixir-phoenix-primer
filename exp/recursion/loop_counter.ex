# http://dantswain.herokuapp.com/blog/2015/01/06/storing-state-in-elixir-with-processes/

defmodule Exp.LoopCounter do
  def go, do: go(0)

  defp go(n) do
    IO.puts("n is #{n}")
    # just to make sure this doesn't blow up our terminal
    :timer.sleep(1000)
    go(n + 1)
  end
end
