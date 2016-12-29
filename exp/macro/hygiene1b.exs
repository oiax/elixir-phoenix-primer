require ContextHygiene1
a = 1
ContextHygiene1.read # 1
ContextHygiene1.write
ContextHygiene1.read # 2
IO.puts a # 2
