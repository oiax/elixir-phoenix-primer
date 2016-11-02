alias Exp.Counter0, as: Counter

{:ok, counter} = Counter.start_link

Enum.each [1, 2, 3], fn(_) ->
  :timer.sleep(1000)
  Counter.inc(counter)
end
