defmodule Exp.SignalCounter do
  # API methods
  def new do
    spawn fn -> loop(0) end
  end

  def set(pid, value) do
    send(pid, {:set, value, self()})
    receive do x -> x end
  end

  def click(pid) do
    IO.puts ">> click 1"
    send(pid, {:click, self()})
    receive do
      x ->
        IO.puts ">> click 2 (#{x})"
        x
    end
  end

  def get(pid) do
    send(pid, {:get, self()})
    receive do x -> x end
  end

  def sleep do
    IO.puts "  ... sleeping ..."
    :timer.sleep(1000)
  end

  # Counter implementation
  defp loop(n) do
    IO.puts ">> loop #{n}"
    receive do
      {:click, from} ->
        send(from, n + 1)
        loop(n + 1)
      {:get, from} ->
        send(from, n)
        loop(n)
      {:set, value, from} ->
        send(from, :ok)
        loop(value)
    end
  end
end
