alias Exp.Counter

{:ok, counter} = Counter.start_link(0)

Counter.inc(counter)
Counter.inc(counter)
IO.puts Counter.val(counter)

Counter.dec(counter)
IO.puts Counter.val(counter)
