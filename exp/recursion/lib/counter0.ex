defmodule Exp.Counter0 do
  def start_link do
    { :ok, spawn_link(fn -> listen(0) end) }
  end

  def inc(pid), do: send(pid, :inc)

  defp listen(val) do
    IO.puts "val = #{val}"

    receive do
      :inc -> listen(val + 1)
    end
  end
end
