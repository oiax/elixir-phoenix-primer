require ContextHygiene2
ContextHygiene2.write
ContextHygiene2.read #=> 1
#IO.puts a # ** (CompileError) hygiene2.exs:4: undefined function a/0
