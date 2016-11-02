alias Exp.Counter2, as: Counter

{:ok, counter} = Counter.start_link
val = Counter.val(counter)
IO.puts "val = #{val}"

Enum.each [1, 2, 3], fn(_) ->
  Counter.inc(counter)
  val = Counter.val(counter)
  IO.puts "val = #{val}"

  :timer.sleep(1000)
end

:timer.sleep(2000)
