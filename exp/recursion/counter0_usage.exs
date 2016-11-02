alias Exp.Counter0, as: Counter

{:ok, counter} = Counter.start_link

Enum.each [1, 2, 3], fn(_) ->
  Counter.inc(counter)

  :timer.sleep(1000)
end
