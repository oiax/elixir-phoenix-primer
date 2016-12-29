# warning: variable a is unused
#   hygiene1.exs:4
require ContextHygiene1
a = 1
ContextHygiene1.write
ContextHygiene1.read # 2
IO.puts a # 2
