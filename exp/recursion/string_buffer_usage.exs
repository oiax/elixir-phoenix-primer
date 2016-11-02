alias Exp.StringBuffer, as: StringBuffer

{:ok, buffer} = StringBuffer.start_link
val = StringBuffer.val(buffer)
IO.puts "val = '#{val}'"

Enum.each ~w(abc def ghi), fn(s) ->
  StringBuffer.append(buffer, s)
  val = StringBuffer.val(buffer)
  IO.puts "val = '#{val}'"

  :timer.sleep(1000)
end

:timer.sleep(2000)
