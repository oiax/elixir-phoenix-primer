alias Exp.SignalCounter, as: Counter

pid0 = Counter.new

Counter.sleep

Counter.click(pid0)
IO.puts Counter.get(pid0)

Counter.sleep

Counter.set(pid0, 42)
IO.puts Counter.get(pid0)

Counter.sleep

Counter.click(pid0)
IO.puts Counter.get(pid0)
