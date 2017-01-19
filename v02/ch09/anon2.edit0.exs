double2 = fn({atom, n}) -> {atom, n * 2} end
x = double2.({:a, 7})
IO.inspect x
