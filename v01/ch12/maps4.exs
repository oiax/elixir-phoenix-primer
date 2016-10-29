m = %{ x: 1 }
m = %{ m | :x => 2 }
IO.inspect m[:x]
